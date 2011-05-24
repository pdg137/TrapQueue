class Bid < ActiveRecord::Base
  include Workflow

  belongs_to :user

  validates_inclusion_of :workflow_state, :in => %w(new accepted declined)

  workflow do
    state :new
    state :declined
    state :accepted
  end
end
