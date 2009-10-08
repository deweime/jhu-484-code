# == Schema Information
# Schema version: 20091008011719
#
# Table name: addresses
#
#  id         :integer         not null, primary key
#  person_id  :integer
#  city       :string(255)
#  state      :string(255)
#  zip        :integer
#  created_at :datetime
#  updated_at :datetime
#

class Address < ActiveRecord::Base
end
