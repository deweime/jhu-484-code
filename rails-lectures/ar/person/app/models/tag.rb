# == Schema Information
# Schema version: 20091008011719
#
# Table name: tags
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  description :text
#

class Tag < ActiveRecord::Base
  belongs_to :document
end
