class AddRolesToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :is_admin, :boolean, :default => false
    add_column :users, :is_coordinator, :boolean, :default => false
    add_column :users, :is_manager, :boolean, :default => false
    add_column :users, :is_trapper, :boolean, :default => false
  end

  def self.down
  end
end
