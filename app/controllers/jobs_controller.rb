class JobsController < ApplicationController
  respond_to :csv, :only => :index
  respond_to :html

  def index
    respond_with(@jobs = Job.all)
  end

  def archived
    @jobs = Job.find(:all, :conditions => { :status => 'archived' })
    render :index
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def destroy
  end

  def graphs
    @jobs = Job.all
  end

end
