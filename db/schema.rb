# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130217141734) do

  create_table "available_rooms", :force => true do |t|
    t.integer  "hostel_id"
    t.string   "description"
    t.integer  "vacancies"
    t.integer  "capacity"
    t.integer  "type"
    t.integer  "rent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "districts", :force => true do |t|
    t.integer  "state_id"
    t.string   "name",       :limit => 32
    t.boolean  "verified",                 :default => false
    t.boolean  "valid",                    :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hostel_images", :force => true do |t|
    t.integer  "hostel_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "hostel_types", :force => true do |t|
    t.string   "name",       :limit => 96
    t.string   "code",       :limit => 16
    t.string   "permalink",  :limit => 96
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hostels", :force => true do |t|
    t.integer  "user_id"
    t.integer  "region_id"
    t.string   "name",          :limit => 96
    t.string   "address"
    t.string   "email",         :limit => 96
    t.string   "lat",           :limit => 32
    t.string   "lang",          :limit => 32
    t.boolean  "active",                      :default => false
    t.string   "contact_one",   :limit => 16
    t.string   "contact_two",   :limit => 16
    t.string   "contact_three", :limit => 16
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "short_name",    :limit => 64
  end

  create_table "hostels_hostel_types", :id => false, :force => true do |t|
    t.integer "hostel_id"
    t.integer "hostel_type_id"
  end

  create_table "profile_images", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "regions", :force => true do |t|
    t.integer  "district_id"
    t.integer  "state_id"
    t.string   "name",        :limit => 32
    t.string   "pincode",     :limit => 8
    t.boolean  "verified",                  :default => false
    t.boolean  "valid",                     :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "room_images", :force => true do |t|
    t.integer  "available_room_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "states", :force => true do |t|
    t.string   "name",       :limit => 32
    t.string   "code",       :limit => 8
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_types", :force => true do |t|
    t.string   "name",       :limit => 32
    t.string   "permalink",  :limit => 16
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "first_name",             :limit => 16
    t.string   "last_name",              :limit => 16
    t.string   "email",                  :limit => 96
    t.string   "username",               :limit => 32
    t.string   "password",               :limit => 96
    t.string   "address"
    t.string   "contact_one",            :limit => 16
    t.string   "contact_two",            :limit => 16
    t.integer  "user_type_id"
    t.datetime "last_logged_in_on"
    t.datetime "currently_logged_in_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
