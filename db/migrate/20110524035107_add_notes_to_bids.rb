class AddNotesToBids < ActiveRecord::Migration
  def self.up
    add_column :bids, :notes, :text
  end

  def self.down
    remove_column :bids, :notes
  end
end
