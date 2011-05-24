class Job < ActiveRecord::Base
  include Workflow

  belongs_to :location

  workflow do
    state :open
    state :in_progress
    state :closed
    state :archived
  end

  scope :ordered_by_state, order("FIELD(workflow_state, 'open', 'in_progress', 'archived', 'closed')")

  def self.with_state(state)
    where(:workflow_state => state)
  end
end
