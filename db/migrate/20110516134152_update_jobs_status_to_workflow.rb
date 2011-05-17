class UpdateJobsStatusToWorkflow < ActiveRecord::Migration
  def self.up
    remove_column :jobs, :status
    add_column :jobs, :workflow_state, :string
  end

  def self.down
    add_column :jobs, :status, :string
    remove_column :jobs, :workflow_state
  end
end
