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

ActiveRecord::Schema.define(version: 20170824170444) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "address"
    t.string "city"
    t.string "province"
    t.string "postal_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coverage_types", force: :cascade do |t|
    t.string "name"
    t.float "monthly_price"
    t.integer "tow_distance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "memberships", force: :cascade do |t|
    t.string "number"
    t.date "join_date"
    t.float "balance_due"
    t.bigint "coverage_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coverage_type_id"], name: "index_memberships_on_coverage_type_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email_address"
    t.date "birth_date"
    t.bigint "address_id"
    t.bigint "membership_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_users_on_address_id"
    t.index ["membership_id"], name: "index_users_on_membership_id"
  end

  add_foreign_key "memberships", "coverage_types"
  add_foreign_key "users", "addresses"
  add_foreign_key "users", "memberships"
end
