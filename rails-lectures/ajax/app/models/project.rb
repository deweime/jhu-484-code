class Project < ActiveRecord::Base
  validates_uniqueness_of :name
  has_many :project_assignments, :dependent => :destroy
  
end
