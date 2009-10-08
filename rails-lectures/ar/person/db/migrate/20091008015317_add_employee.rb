class AddEmployee < ActiveRecord::Migration
  def self.up
    add_column(:people, :type, :string)
    add_column(:people, :payroll_id, :integer)
  end

  def self.down
    add_column(:people, :type)
    add_column(:people, :payroll_id)
  end
end
