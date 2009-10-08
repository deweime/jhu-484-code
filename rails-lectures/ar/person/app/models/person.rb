# == Schema Information
# Schema version: 20091008011719
#
# Table name: people
#
#  id         :integer         not null, primary key
#  fname      :string(255)
#  lname      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Person < ActiveRecord::Base
  has_one :identity
  
  composed_of :name,
                  :class_name => 'Name',
                  :mapping => [[ :fname, :fname],[ :lname, :lname]]

end
