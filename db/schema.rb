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

ActiveRecord::Schema.define(version: 20150609041050) do

  create_table "carrier_locations", force: true do |t|
    t.integer "carrier_id"
    t.string  "street_addr"
    t.string  "street_addr2"
    t.integer "city_id"
    t.integer "state_id"
    t.integer "zip"
  end

  add_index "carrier_locations", ["carrier_id"], name: "index_carrier_locations_on_carrier_id"
  add_index "carrier_locations", ["city_id"], name: "index_carrier_locations_on_city_id"
  add_index "carrier_locations", ["state_id"], name: "index_carrier_locations_on_state_id"

  create_table "carriers", force: true do |t|
    t.string  "name"
    t.integer "mc_number"
    t.integer "dot_number"
  end

  create_table "cities", force: true do |t|
    t.integer "state_id"
    t.string  "city_name"
    t.string  "city_abbrev"
  end

  add_index "cities", ["state_id"], name: "index_cities_on_state_id"

  create_table "drivers", force: true do |t|
    t.string  "name"
    t.decimal "last_lat"
    t.decimal "last_long"
    t.integer "carrier_id"
  end

  add_index "drivers", ["carrier_id"], name: "index_drivers_on_carrier_id"

  create_table "drivers_tractors", force: true do |t|
    t.integer "driver_id"
    t.integer "tractor_id"
  end

  create_table "states", force: true do |t|
    t.string "state_name"
    t.string "state_abbrev"
  end

  create_table "tractors", force: true do |t|
    t.string  "name"
    t.integer "max_weight"
  end

  create_table "users", force: true do |t|
    t.string  "email"
    t.string  "password_digest"
    t.integer "carrier_id"
    t.string  "reset_password_token"
  end

  add_index "users", ["carrier_id"], name: "index_users_on_carrier_id"

end
