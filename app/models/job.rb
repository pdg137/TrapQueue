class Job < ActiveRecord::Base
  include Workflow

  belongs_to :location
  has_many :bids

  workflow do
    state :open do
      event :start, :transitions_to => :in_progress
    end
    state :in_progress do
      event :close, :transitions_to => :closed
      event :archive, :transitions_to => :archive
    end
    state :closed do
      event :archive, :transitions_to => :archive
    end
    state :archived
  end

  scope :ordered_by_state, order("FIELD(workflow_state, 'open', 'in_progress', 'archived', 'closed')")

  def self.with_state(state)
    where(:workflow_state => state)
  end
end
