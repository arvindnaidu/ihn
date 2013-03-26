class User < ActiveRecord::Base
      belongs_to :user_type
      has_many :hostels
      has_one :profile_image

      def home_page
      	  "/#{self.username}"
      end

      def hostels_page
         "/#{self.username}/hostels"
      end

      def hostel_page(hostel_id)
      	 "/#{self.username}/hostels/#{hostel_id}" 
      end
end
