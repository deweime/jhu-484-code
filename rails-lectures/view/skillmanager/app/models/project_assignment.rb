class ProjectAssignment < ActiveRecord::Base
  belongs_to :engineer
  belongs_to :project
  
  attr_accessor :name

  before_save :verify_project
  
  # An Engineer new/edit operation can add a project assignment
  # Need to ensure the project (by name) exists and is linked to
  def verify_project
     puts "SAVING a PROJECT ASSIGNMENT"
     puts engineer
     puts project 
     puts "#{name}"
  end
  
end
