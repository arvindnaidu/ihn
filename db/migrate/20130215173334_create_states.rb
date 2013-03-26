class CreateStates < ActiveRecord::Migration
  def self.up
    create_table :states do |t|
      t.string :name, :limit => 32
      t.string :code, :limit => 8

      t.timestamps
    end
  end

  def self.down
    drop_table :states
  end
end
