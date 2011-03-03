class UsersController < ApplicationController
  before_filter :authenticate_user
  
  def index
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
