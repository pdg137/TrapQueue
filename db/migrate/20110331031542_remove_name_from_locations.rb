class RemoveNameFromLocations < ActiveRecord::Migration
  def self.up
    remove_column :locations, :phone_number
    remove_column :locations, :name
  end
end
