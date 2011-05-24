class JobsController < ApplicationController
  respond_to :html, :csv

  def index
    @jobs = (params[:state]) ? Job.with_state(params[:state]) : Job.ordered_by_state
    @jobs = @jobs.page(params[:page]).per(50)
    respond_with(@jobs)
  end

  def show
    @job = Job.find(params[:id])
    respond_with(@job)
  end

  def new
    @job = Job.new
    respond_with(@job)
  end

  def create
    @job = Job.new(params[:job])
    if @job.save
      flash[:notice] = "Successfully created job."
    end
    respond_with(@job)
  end

  def edit
    @job = Job.find(params[:id])
    respond_with(@job)
  end

  def update
    @job = Job.find(params[:id])
    if @job.update_attributes(params[:job])
      flash[:notice] = "Successfully updated job."
    end
    respond_with(@job)
  end

  def start
    @job = Job.find(params[:id])
    @job.bids.find(params[:bid]).accept!
    @job.start!
    @job.bids.awaiting.each(&:decline!)
    respond_with(@job)
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    flash[:notice] = "Successfully destroyed job."
    respond_with(@job)
  end
end
