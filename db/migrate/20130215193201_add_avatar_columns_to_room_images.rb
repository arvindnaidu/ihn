class AddAvatarColumnsToRoomImages < ActiveRecord::Migration
  def self.up
      add_attachment :room_images, :avatar
  end

  def self.down
      remove_attachment :room_images, :avatar
  end
end
