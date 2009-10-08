class AddNameIndexToTag < ActiveRecord::Migration
  def self.up
    add_index :tags, :name, :unique => true
  end

  def self.down
  end
end
