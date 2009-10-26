class CreateProjectAssignments < ActiveRecord::Migration
  def self.up
    create_table :project_assignments do |t|
      t.integer :project_id
      t.integer :engineer_id
      t.date :sdate
      t.date :edate

      t.timestamps
    end
  end

  def self.down
    drop_table :project_assignments
  end
end
