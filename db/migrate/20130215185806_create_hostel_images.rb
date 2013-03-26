class CreateHostelImages < ActiveRecord::Migration
  def self.up
    create_table :hostel_images do |t|
      t.integer :hostel_id, :limit => 11

      t.timestamps
    end
  end

  def self.down
    drop_table :hostel_images
  end
end
