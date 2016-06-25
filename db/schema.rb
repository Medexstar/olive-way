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

ActiveRecord::Schema.define(version: 20160625032230) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accessories", force: :cascade do |t|
    t.string   "name"
    t.integer  "quantity"
    t.decimal  "unit_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "billing_addresses", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "company"
    t.string   "street"
    t.integer  "postcode"
    t.string   "suburb"
    t.string   "state"
    t.string   "country"
    t.integer  "phone"
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "billing_addresses", ["user_id"], name: "index_billing_addresses_on_user_id", using: :btree

  create_table "measurements", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "unit"
    t.float    "shoulder"
    t.float    "half_chest"
    t.float    "half_jacket_waist"
    t.float    "half_hern"
    t.float    "back_length"
    t.float    "sleeve_outstern"
    t.float    "bicep"
    t.float    "pant_outseam"
    t.float    "half_pant_waist"
    t.float    "half_bottom"
    t.float    "crotch"
    t.float    "thigh"
    t.float    "hip"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "measurements", ["user_id"], name: "index_measurements_on_user_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.decimal  "total_price"
    t.datetime "ordered_on"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "orders_accessories", id: false, force: :cascade do |t|
    t.integer "order_id"
    t.integer "accessory_id"
  end

  add_index "orders_accessories", ["accessory_id"], name: "index_orders_accessories_on_accessory_id", using: :btree
  add_index "orders_accessories", ["order_id"], name: "index_orders_accessories_on_order_id", using: :btree

  create_table "orders_suits", id: false, force: :cascade do |t|
    t.integer "order_id"
    t.integer "suit_id"
  end

  add_index "orders_suits", ["order_id"], name: "index_orders_suits_on_order_id", using: :btree
  add_index "orders_suits", ["suit_id"], name: "index_orders_suits_on_suit_id", using: :btree

  create_table "shipping_addresses", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "company"
    t.string   "street"
    t.integer  "postcode"
    t.string   "suburb"
    t.string   "state"
    t.string   "country"
    t.integer  "phone"
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "shipping_addresses", ["user_id"], name: "index_shipping_addresses_on_user_id", using: :btree

  create_table "suits", force: :cascade do |t|
    t.string   "name"
    t.integer  "quantity"
    t.decimal  "unit_price"
    t.string   "sex"
    t.string   "colour"
    t.string   "jacket_lapels"
    t.string   "jacket_vents"
    t.string   "jacket_buttons"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",               default: "", null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
