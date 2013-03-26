class CreateProfileImages < ActiveRecord::Migration
  def self.up
    create_table :profile_images do |t|
      t.integer :user_id, :limit => 11		 
      t.timestamps
    end
  end

  def self.down
    drop_table :profile_images
  end
end