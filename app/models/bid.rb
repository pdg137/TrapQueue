class Bid < ActiveRecord::Base
  include Workflow

  belongs_to :user

  validates_inclusion_of :workflow_state, :in => %w(new accepted declined)

  workflow do
    state :new do
      event :decline, :transitions_to => :declined
      event :accept, :transitions_to => :accepted
    end
    state :declined
    state :accepted
  end

  scope :new, where(:workflow_state => "new")
  scope :declined, where(:workflow_state => "declined")
  scope :accepted, where(:workflow_state => "accepted")
end
