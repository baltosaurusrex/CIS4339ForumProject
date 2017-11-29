class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  before_action :authenticate_user!


  def login(user)
    session[:user_id] = user.id
  end

  def logout
    session.delete(:user_id)
    @current_user = nil
  end

  def logged_in?
    current_user.nil? ? false : true
  end

  helper_method :current_user, :logged_in?
end