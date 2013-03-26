class CreateDistricts < ActiveRecord::Migration
  def self.up
    create_table :districts do |t|
      t.integer :state_id, :limit => 11
      t.string :name, :limit => 32
      t.boolean :verified, :default => false
      t.boolean :valid, :default => false

      t.timestamps
    end
  end

  def self.down
    drop_table :districts
  end
end
