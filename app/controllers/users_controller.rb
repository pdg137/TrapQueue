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
