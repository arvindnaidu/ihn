class RoomImage < ActiveRecord::Base
      belongs_to :available_room
      attr_accessible :avatar
      has_attached_file :avatar, :styles => { :medium => "250x250>", :thumb => "80x80>" }, :url => "/:class/:attachment/:id/:style.:extension"
end
