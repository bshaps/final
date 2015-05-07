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

ActiveRecord::Schema.define(version: 0) do

  create_table "carrier_locations", force: true do |t|
    t.integer "carrier_id"
    t.string  "street_addr"
    t.string  "street_addr2"
    t.integer "city"
    t.integer "state"
    t.integer "zip"
  end

  add_index "carrier_locations", ["carrier_id"], name: "index_carrier_locations_on_carrier_id"

  create_table "carriers", force: true do |t|
    t.string  "name"
    t.integer "mc_number"
    t.integer "dot_number"
  end

  create_table "cities", force: true do |t|
    t.string  "city_name"
    t.string  "city_abbrev"
    t.integer "state_id"
  end

  add_index "cities", ["state_id"], name: "index_cities_on_state_id"

  create_table "states", force: true do |t|
    t.string "state_name"
    t.string "state_abbrev"
  end

end
