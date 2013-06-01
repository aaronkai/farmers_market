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

ActiveRecord::Schema.define(:version => 20101007212537) do

  create_table "ticket_categories", :force => true do |t|
    t.string   "name",       :default => "",   :null => false
    t.boolean  "active",     :default => true, :null => false
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "ticket_updates", :force => true do |t|
    t.integer  "ticket_id",   :null => false
    t.integer  "creator_id",  :null => false
    t.text     "content",     :null => false
    t.string   "update_type", :null => false
    t.string   "set_state"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "tickets", :force => true do |t|
    t.integer  "organization_id",                 :null => false
    t.integer  "user_id",                         :null => false
    t.integer  "app_id"
    t.string   "subject",         :default => "", :null => false
    t.text     "details",                         :null => false
    t.integer  "category_id",                     :null => false
    t.integer  "priority_id",                     :null => false
    t.string   "state",                           :null => false
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "status"
    t.integer  "org_id"
    t.string   "org_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "email"
    t.integer  "uid"
    t.string   "api_key"
  end

end
