class AddAvatarColumnsToProfileImages < ActiveRecord::Migration
  def self.up
      add_attachment :profile_images, :avatar
  end

  def self.down
      remove_attachment :profile_images, :avatar
  end
end
