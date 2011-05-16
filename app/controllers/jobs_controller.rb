class JobsController < ApplicationController
  respond_to :html, :csv, :only => :index

  def index
    params[:status] ||= "open"
    @jobs = Job.send(params[:status])
    @jobs = @jobs.page(params[:page]).per(50)
    respond_with(@jobs)
  end

  # def archived
  #   @jobs = Job.where(:status => "archived").all
  #   render(:index)
  # end

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
