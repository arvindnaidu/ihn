class AvailableRoom < ActiveRecord::Base
      belongs_to :hostel
      has_many :room_images
end
