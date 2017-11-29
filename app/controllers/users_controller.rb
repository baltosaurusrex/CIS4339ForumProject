class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end


  def import
  if params[:file ].nil?
    redirect_to root_url, alert: "CSV file not there"
  else


    User.import(params[:file])
        redirect_to root_url, notice: "CSV Imported"
  end
    end
end
