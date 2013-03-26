class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :first_name, :limit => 16
      t.string :last_name, :limit => 16
      t.string :email, :limit => 96
      t.string :username, :limit => 32
      t.string :password, :limit => 96
      t.string :address
      t.string :contact_one, :limit => 16
      t.string :contact_two, :limit => 16
      t.integer :user_type_id, :limit => 11
      t.datetime :last_logged_in_on
      t.datetime :currently_logged_in_at

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
