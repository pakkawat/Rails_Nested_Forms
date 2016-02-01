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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160201080236) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chef_att_debs", force: :cascade do |t|
    t.integer  "room_category_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.text     "name"
  end

  add_index "chef_att_debs", ["room_category_id"], name: "index_chef_att_debs_on_room_category_id", using: :btree

  create_table "chef_att_repositories", force: :cascade do |t|
    t.integer  "room_category_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.text     "name"
  end

  add_index "chef_att_repositories", ["room_category_id"], name: "index_chef_att_repositories_on_room_category_id", using: :btree

  create_table "chef_att_sources", force: :cascade do |t|
    t.integer  "room_category_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.text     "name"
  end

  add_index "chef_att_sources", ["room_category_id"], name: "index_chef_att_sources_on_room_category_id", using: :btree

  create_table "hotels", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "room_categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "hotel_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "priority"
  end

  add_index "room_categories", ["hotel_id"], name: "index_room_categories_on_hotel_id", using: :btree

  add_foreign_key "chef_att_debs", "room_categories"
  add_foreign_key "chef_att_repositories", "room_categories"
  add_foreign_key "chef_att_sources", "room_categories"
  add_foreign_key "room_categories", "hotels"
end
