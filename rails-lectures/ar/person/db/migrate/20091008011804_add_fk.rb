class AddFk < ActiveRecord::Migration
  def self.up
  end

  def self.down
  end
  
  extend MigrationHelpers
  #add_foreign_key :addresses, :person_id, :people
end
