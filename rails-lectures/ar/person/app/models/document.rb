# == Schema Information
# Schema version: 20091008011719
#
# Table name: documents
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  body       :text
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Document < ActiveRecord::Base
  validates_uniqueness_of  :name
  validates_presence_of    :title

  has_many :tags
end
