class Hostel < ActiveRecord::Base
      belongs_to :user
      belongs_to :region
      has_many :hostel_images
      has_many :available_rooms
      has_and_belongs_to_many :hostel_types
end
