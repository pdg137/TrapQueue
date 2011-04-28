class UsersController < ApplicationController
  access_control do
    allow :admin
  end

  before_filter :authenticate_user

  def index
    @users = User.find(:all)
  end
  
  def show
  end
  
  def new
  end
  
  def create
  end
  
  def edit
  end
  
  def update
    @user = User.find(params[:id])
    raise params[:checked].inspect
    if params[:checked] == "1"
      @user.has_role!(params[:role])
    else
      raise params[:role].inspect
      @user.has_no_role!(params[:role])
    end
    render :nothing => true
  end
  
  def destroy
  end
  
protected

  def authenticate_user
    unless current_user
      redirect_to(new_user_session_path)
    end
  end
end
