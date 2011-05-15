class JobsController < ApplicationController
  respond_to :html, :csv, :only => :index

  def index
    respond_with(@jobs = Job.available)
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
