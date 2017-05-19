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

ActiveRecord::Schema.define(version: 20170515154059) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "histories", force: :cascade do |t|
    t.bigint "price_id"
    t.bigint "watch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["price_id"], name: "index_histories_on_price_id"
    t.index ["watch_id"], name: "index_histories_on_watch_id"
  end

  create_table "portfolios", force: :cascade do |t|
    t.bigint "account_id"
    t.bigint "watch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_portfolios_on_account_id"
    t.index ["watch_id"], name: "index_portfolios_on_watch_id"
  end

  create_table "prices", force: :cascade do |t|
    t.string "currency"
    t.decimal "price"
    t.string "condition"
    t.datetime "date"
    t.string "seller_type"
    t.string "serial"
  end

  create_table "watches", force: :cascade do |t|
    t.string "name"
    t.string "brand"
    t.string "reference"
    t.string "type"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "histories", "prices"
  add_foreign_key "histories", "watches"
  add_foreign_key "portfolios", "accounts"
  add_foreign_key "portfolios", "watches"
end
