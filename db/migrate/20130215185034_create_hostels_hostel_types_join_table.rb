class CreateHostelsHostelTypesJoinTable < ActiveRecord::Migration
  def self.up
    create_table :hostels_hostel_types, :id => false do |t|
      t.integer :hostel_id, :limit => 11
      t.integer :hostel_type_id, :limit => 11
    end  
  end

  def self.down
      drop_table :hostels_hostel_types
  end
end