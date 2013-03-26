class HostelImage < ActiveRecord::Base
      belongs_to :hostel
      attr_accessible :avatar
      has_attached_file :avatar, :styles => { :medium => "200x200>", :thumb => "80x80>" }, :url => "/:class/:attachment/:id/:style.:extension", :default_url => "/images/image_01.jpg"
end
