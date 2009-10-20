class Engineer < ActiveRecord::Base
  has_many :project_assignments, :dependent => :destroy
  has_many :projects , :through => :project_assignments
  
  accepts_nested_attributes_for :project_assignments, :allow_destroy => true
  
end
