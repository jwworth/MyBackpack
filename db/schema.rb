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

ActiveRecord::Schema.define(version: 20151228220640) do

  create_table "hikers", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "bio"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "email"
    t.string   "password_digest"
  end

  create_table "hikes", force: :cascade do |t|
    t.string   "name"
    t.string   "coordinates"
    t.float    "length"
    t.integer  "elevation_gain"
    t.integer  "highest_point"
    t.string   "description"
    t.string   "parking_pass"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "image"
  end

  create_table "trips", force: :cascade do |t|
    t.integer  "hiker_id"
    t.integer  "hike_id"
    t.datetime "completed_at"
    t.string   "notes"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
