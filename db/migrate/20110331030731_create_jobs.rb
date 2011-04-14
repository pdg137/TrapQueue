class CreateJobs < ActiveRecord::Migration
  def self.up
    create_table :jobs do |t|
      t.integer :number_of_cats
      t.integer :actual_number_of_cats
      t.integer :location_id
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :jobs
  end
end
