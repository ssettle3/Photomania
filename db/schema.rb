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

ActiveRecord::Schema.define(version: 20160419225126) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.integer "userId"
    t.string  "title"
  end

  create_table "photos", force: :cascade do |t|
    t.integer "albumId"
    t.string  "title"
    t.string  "url"
    t.string  "thumbnailUrl"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "email"
    t.string "phone"
    t.string "website"
    t.json   "company",  default: {"name"=>"", "catchPhrase"=>"", "bs"=>""}
    t.json   "address",  default: {"street"=>"", "suite"=>"", "city"=>"", "zipcode"=>"", "phone"=>"", "website"=>""}
  end

end
