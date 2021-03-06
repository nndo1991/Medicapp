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

ActiveRecord::Schema.define(:version => 20131104153734) do

  create_table "attendants", :force => true do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "email"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "phone"
    t.text     "address"
    t.string   "city"
    t.string   "country"
    t.string   "profession"
    t.text     "institution"
    t.text     "interests"
    t.integer  "convention_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "status"
  end

  create_table "contact_messages", :force => true do |t|
    t.text     "name"
    t.text     "email"
    t.text     "phone"
    t.text     "comments"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "conventions", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "event_type"
    t.string   "name"
    t.string   "person"
    t.text     "description"
    t.date     "date"
    t.time     "time"
    t.string   "place"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "convention_id"
  end

  create_table "gallery_images", :force => true do |t|
    t.text     "image"
    t.string   "text"
    t.text     "link"
    t.string   "title"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "convention_id"
  end

  create_table "users", :force => true do |t|
    t.string   "username",         :null => false
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

end
