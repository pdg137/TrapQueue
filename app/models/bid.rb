class Bid < ActiveRecord::Base
  include Workflow

  belongs_to :user

  workflow do
    state :awating do
      event :decline, :transitions_to => :declined
      event :accept, :transitions_to => :accepted
    end
    state :declined
    state :accepted
  end

  scope :awaiting, where(:workflow_state => "awaiting")
  scope :declined, where(:workflow_state => "declined")
  scope :accepted, where(:workflow_state => "accepted")
end
