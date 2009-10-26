class Engineer < ActiveRecord::Base
  has_many :project_assignments, :dependent => :destroy
  has_many :projects , :through => :project_assignments
  
  has_many :resources, :dependent => :destroy
  
  accepts_nested_attributes_for :project_assignments, :allow_destroy => true
  accepts_nested_attributes_for :resources, :allow_destroy => true
  
  acts_as_taggable
  acts_as_solr :fields => [:fname, :lname]
  
end
