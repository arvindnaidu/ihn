class AddAvatarColumnsToHostelImages < ActiveRecord::Migration
  def self.up
      add_attachment :hostel_images, :avatar
  end

  def self.down
      remove_attachment :hostel_images, :avatar
  end
end
