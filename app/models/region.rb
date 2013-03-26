class Region < ActiveRecord::Base
      has_many :hostels
      belongs_to :destrict
      belongs_to :state
end
