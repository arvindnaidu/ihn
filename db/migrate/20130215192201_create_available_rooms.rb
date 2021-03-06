class CreateAvailableRooms < ActiveRecord::Migration
  def self.up
    create_table :available_rooms do |t|
      t.integer :hostel_id, :limit => 11
      t.string :description
      t.integer :vacancies
      t.integer :capacity
      t.integer :type
      t.integer :rent

      t.timestamps
    end
  end

  def self.down
    drop_table :available_rooms
  end
end
