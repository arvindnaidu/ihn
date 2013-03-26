class ProfileImage < ActiveRecord::Base
      attr_accessible :avatar
      belongs_to :user
      has_attached_file :avatar, :styles => { :medium => "310x200>", :thumb => "80x80>" }, :url => "/:class/:attachment/:id/:style.:extension", :default_url => "/images/default_profile_image.png", :default_style => :thumb
end
