class CreateHostels < ActiveRecord::Migration
  def self.up
    create_table :hostels do |t|
      t.integer :user_id, :limit => 11
      t.integer :region_id, :limit => 11
      t.string :name, :limit => 96
      t.string :address
      t.string :email, :limit => 96
      t.string :lat, :limit => 32
      t.string :lang, :limit => 32
      t.boolean :active, :default => false
      t.string :contact_one, :limit => 16
      t.string :contact_two, :limit => 16
      t.string :contact_three, :limit => 16

      t.timestamps
    end
  end

  def self.down
    drop_table :hostels
  end
end
