# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

p1 = Project.create(:name => 'Windows', :description => 'Ancient Operating Ssytem')
p2 = Project.create(:name => 'Linux', :description => 'A Good Choice')
p3 = Project.create(:name => 'Mac OS/X', :description => 'Works Best')
