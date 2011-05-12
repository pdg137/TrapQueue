class AddLocationIdToClient < ActiveRecord::Migration
  def self.up
    add_column :locations, :client_id, :integer
  end

  def self.down
  end
end
