class AddShortNameToHostels < ActiveRecord::Migration
  def self.up
    add_column :hostels, :short_name, :string, :limit => 64
  end

  def self.down
    remove_column :hostels, :short_name
  end
end
