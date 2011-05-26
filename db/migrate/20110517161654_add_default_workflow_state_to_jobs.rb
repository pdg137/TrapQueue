class AddDefaultWorkflowStateToJobs < ActiveRecord::Migration
  def self.up
    remove_column :jobs, :workflow_state
    add_column :jobs, :workflow_state, :string, :default => "open"
  end

  def self.down
  end
end
