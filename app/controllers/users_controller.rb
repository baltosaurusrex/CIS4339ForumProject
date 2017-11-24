class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def import
    User.import(params[:file])
    redirect_to root_url, notice: "Activity Data imported!"
  end
end
