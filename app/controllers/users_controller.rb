class UsersController < ApplicationController
  def index
    @users = User.all
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
    # @user = User.find(params[:id])
    # if params[:checked] == "1"
    #   @user.has_role!(params[:role])
    # else
    #   @user.has_no_role!(params[:role])
    # end
    # render :nothing => true
  end
  
  def destroy
  end
end
