class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.string :addr1
      t.string :addr2
      t.string :city
      t.string :zip
      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end
