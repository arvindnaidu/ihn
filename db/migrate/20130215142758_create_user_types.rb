class CreateUserTypes < ActiveRecord::Migration
  def self.up
    create_table :user_types do |t|
      t.string :name, :limit => 32
      t.string :permalink, :limit => 16 

      t.timestamps
    end
    UserType.create([{:name => "Plus User", :permalink => "pls"}, {:name => "Pro User", :permalink => "pro"}, {:name => "Normal User", :permalink => "nl"}])
  end

  def self.down
    drop_table :user_types
  end
end
