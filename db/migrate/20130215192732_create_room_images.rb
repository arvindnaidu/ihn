class CreateRoomImages < ActiveRecord::Migration
  def self.up
    create_table :room_images do |t|
      t.integer :available_room_id, :limit => 11

      t.timestamps
    end
  end

  def self.down
    drop_table :room_images
  end
end
