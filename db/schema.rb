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

ActiveRecord::Schema.define(version: 20160901102031) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accessories", force: :cascade do |t|
    t.string   "name"
    t.integer  "quantity"
    t.integer  "unit_price"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "image_one_file_name"
    t.string   "image_one_content_type"
    t.integer  "image_one_file_size"
    t.datetime "image_one_updated_at"
    t.string   "image_two_file_name"
    t.string   "image_two_content_type"
    t.integer  "image_two_file_size"
    t.datetime "image_two_updated_at"
    t.string   "image_three_file_name"
    t.string   "image_three_content_type"
    t.integer  "image_three_file_size"
    t.datetime "image_three_updated_at"
    t.string   "main_image_file_name"
    t.string   "main_image_content_type"
    t.integer  "main_image_file_size"
    t.datetime "main_image_updated_at"
    t.text     "comment"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
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

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "ambassadors", force: :cascade do |t|
    t.string  "email",                          null: false
    t.string  "first_name",                     null: false
    t.string  "last_name",                      null: false
    t.string  "promotion_code"
    t.boolean "approved",       default: false
    t.string  "university"
    t.string  "mobile"
    t.float   "discount",       default: 0.9
  end

  create_table "billing_addresses", force: :cascade do |t|
    t.string   "company",      default: "", null: false
    t.string   "street",       default: "", null: false
    t.string   "postcode",     default: "", null: false
    t.string   "suburb",       default: "", null: false
    t.string   "state",        default: "", null: false
    t.string   "country",      default: "", null: false
    t.string   "phone",        default: "", null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "user_id"
    t.integer  "address_type"
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "billing_addresses", ["user_id"], name: "index_billing_addresses_on_user_id", using: :btree

  create_table "measurements", force: :cascade do |t|
    t.integer "neck"
    t.integer "shoulder"
    t.integer "sleeve_length"
    t.integer "bicep"
    t.integer "wrist"
    t.integer "bust"
    t.integer "underbust"
    t.integer "back_length"
    t.integer "waist"
    t.integer "hips"
    t.integer "thigh"
    t.integer "rise"
    t.integer "outleg"
    t.integer "inleg"
    t.integer "ankle"
    t.integer "chest"
    t.integer "user_id"
    t.integer "order_object_id"
  end

  add_index "measurements", ["order_object_id"], name: "index_measurements_on_order_object_id", using: :btree
  add_index "measurements", ["user_id"], name: "index_measurements_on_user_id", using: :btree

  create_table "order_objects", force: :cascade do |t|
    t.integer  "jacket_lapels"
    t.integer  "jacket_vents"
    t.integer  "jacket_buttons"
    t.integer  "status",         null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "suit_id"
    t.integer  "accessory_id"
    t.integer  "order_id"
    t.integer  "user_id"
    t.integer  "price"
    t.integer  "ambassador_id"
  end

  add_index "order_objects", ["accessory_id"], name: "index_order_objects_on_accessory_id", using: :btree
  add_index "order_objects", ["ambassador_id"], name: "index_order_objects_on_ambassador_id", using: :btree
  add_index "order_objects", ["order_id"], name: "index_order_objects_on_order_id", using: :btree
  add_index "order_objects", ["suit_id"], name: "index_order_objects_on_suit_id", using: :btree
  add_index "order_objects", ["user_id"], name: "index_order_objects_on_user_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.integer  "total_price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
  end

  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "shipping_addresses", force: :cascade do |t|
    t.string   "company",      default: "", null: false
    t.string   "street",       default: "", null: false
    t.string   "postcode",     default: "", null: false
    t.string   "suburb",       default: "", null: false
    t.string   "state",        default: "", null: false
    t.string   "country",      default: "", null: false
    t.string   "phone",        default: "", null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "user_id"
    t.integer  "address_type"
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "shipping_addresses", ["user_id"], name: "index_shipping_addresses_on_user_id", using: :btree

  create_table "suits", force: :cascade do |t|
    t.string   "name",                     null: false
    t.integer  "quantity",                 null: false
    t.integer  "unit_price",               null: false
    t.integer  "sex",                      null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "image_one_file_name"
    t.string   "image_one_content_type"
    t.integer  "image_one_file_size"
    t.datetime "image_one_updated_at"
    t.string   "image_two_file_name"
    t.string   "image_two_content_type"
    t.integer  "image_two_file_size"
    t.datetime "image_two_updated_at"
    t.string   "image_three_file_name"
    t.string   "image_three_content_type"
    t.integer  "image_three_file_size"
    t.datetime "image_three_updated_at"
    t.string   "main_image_file_name"
    t.string   "main_image_content_type"
    t.integer  "main_image_file_size"
    t.datetime "main_image_updated_at"
    t.text     "comment"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",               default: "", null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "first_name",             default: "", null: false
    t.string   "last_name",              default: "", null: false
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
    t.integer  "sex"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

  add_foreign_key "billing_addresses", "users"
  add_foreign_key "measurements", "order_objects"
  add_foreign_key "measurements", "users"
  add_foreign_key "order_objects", "accessories"
  add_foreign_key "order_objects", "ambassadors"
  add_foreign_key "order_objects", "orders"
  add_foreign_key "order_objects", "suits"
  add_foreign_key "order_objects", "users"
  add_foreign_key "orders", "users"
  add_foreign_key "shipping_addresses", "users"
end
