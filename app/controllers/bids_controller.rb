class BidsController < ApplicationController
  respond_to :html

  def create
    @job = Job.find(params[:job_id])
    @bid = @job.bids.new(params[:bid])
    @bid.user = current_user
    @bid.save!
    respond_with(@job)
  end
end
