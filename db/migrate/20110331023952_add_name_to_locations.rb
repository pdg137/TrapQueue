class AddNameToLocations < ActiveRecord::Migration
  def self.up
    add_column :locations, :name, :string
    add_column :locations, :phone_number, :string
  end

  def self.down
    remove_column :locations, :phone_number
    remove_column :locations, :name
  end
end
