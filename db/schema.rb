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

ActiveRecord::Schema.define(version: 2018_09_01_223707) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "days", force: :cascade do |t|
    t.string "date"
    t.float "value"
    t.bigint "goal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["goal_id"], name: "index_days_on_goal_id"
  end

  create_table "days_salesmen", id: false, force: :cascade do |t|
    t.bigint "day_id", null: false
    t.bigint "salesman_id", null: false
    t.index ["day_id", "salesman_id"], name: "index_days_salesmen_on_day_id_and_salesman_id"
    t.index ["salesman_id", "day_id"], name: "index_days_salesmen_on_salesman_id_and_day_id"
  end

  create_table "goals", force: :cascade do |t|
    t.string "name", null: false
    t.date "start_date", null: false
    t.date "end_date", null: false
    t.date "month_reference", null: false
    t.float "value", null: false
    t.bigint "store_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["store_id"], name: "index_goals_on_store_id"
  end

  create_table "owners", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "periods", force: :cascade do |t|
    t.bigint "salesman_id", null: false
    t.bigint "goal_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["goal_id"], name: "index_periods_on_goal_id"
    t.index ["salesman_id"], name: "index_periods_on_salesman_id"
  end

  create_table "salesmen", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "store_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["store_id"], name: "index_salesmen_on_store_id"
  end

  create_table "stores", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "owner_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_stores_on_owner_id"
  end

  add_foreign_key "days", "goals"
  add_foreign_key "goals", "stores"
  add_foreign_key "periods", "goals"
  add_foreign_key "periods", "salesmen"
  add_foreign_key "salesmen", "stores"
  add_foreign_key "stores", "owners"
end
