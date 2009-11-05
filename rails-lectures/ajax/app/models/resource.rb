class Resource < ActiveRecord::Base
  belongs_to :engineer
    has_attached_file :f, 
             :whiny_thumbnails => false, 
             :styles => { :thumb=> "100x100>", :small => "150x150>" }
end
