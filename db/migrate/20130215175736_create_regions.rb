class CreateRegions < ActiveRecord::Migration
  def self.up
    create_table :regions do |t|
      t.integer :district_id, :limit => 11
      t.integer :state_id, :limit => 11
      t.string :name, :limit => 32
      t.string :pincode, :limit => 8
      t.boolean :verified, :default => false
      t.boolean :valid, :default => false

      t.timestamps
    end
  end

  def self.down
    drop_table :regions
  end
end
