class HostelType < ActiveRecord::Base
      has_and_belongs_to_many :hostels
end
