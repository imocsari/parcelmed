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

ActiveRecord::Schema.define(version: 20161128151204) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree
  end

  create_table "attachinary_files", force: :cascade do |t|
    t.string   "attachinariable_type"
    t.integer  "attachinariable_id"
    t.string   "scope"
    t.string   "public_id"
    t.string   "version"
    t.integer  "width"
    t.integer  "height"
    t.string   "format"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["attachinariable_type", "attachinariable_id", "scope"], name: "by_scoped_parent", using: :btree
  end

  create_table "bookings", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "courier_id"
    t.integer  "status"
    t.integer  "quantity"
    t.boolean  "extra_packaging"
    t.string   "pick_up_contact_address"
    t.string   "destination_contact_address"
    t.string   "pick_up_contact_name"
    t.string   "destination_contact_name"
    t.string   "pick_up_contact_email"
    t.string   "destination_contact_email"
    t.string   "pick_up_contact_phone"
    t.string   "destination_contact_phone"
    t.string   "special_requirements"
    t.boolean  "hazardous_material"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "terms_and_conditions"
    t.integer  "amount_pennies",              default: 0, null: false
    t.string   "pick_up_postcode"
    t.string   "destination_postcode"
    t.string   "pick_up_company_name"
    t.string   "destination_company_name"
    t.string   "pick_up_town"
    t.string   "pick_up_county"
    t.string   "pick_up_country"
    t.string   "destination_town"
    t.string   "destination_county"
    t.string   "destination_country"
    t.string   "pick_up_department"
    t.string   "destination_department"
    t.index ["courier_id"], name: "index_bookings_on_courier_id", using: :btree
    t.index ["user_id"], name: "index_bookings_on_user_id", using: :btree
  end

  create_table "couriers", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "tomorrow"
    t.boolean  "same_day"
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.boolean  "vapor_compliant",                default: false, null: false
    t.boolean  "ultra_low_compliant",            default: false, null: false
    t.boolean  "frozen_40_compliant",            default: false, null: false
    t.boolean  "frozen_30_compliant",            default: false, null: false
    t.boolean  "refrigerated_compliant",         default: false, null: false
    t.boolean  "controlled_ambiant_compliant",   default: false, null: false
    t.boolean  "uncontrolled_ambiant_compliant", default: false, null: false
    t.float    "vapor_price"
    t.float    "ultra_low_price"
    t.float    "frozen_40_price"
    t.float    "frozen_30_price"
    t.float    "refrigerated_price"
    t.float    "controlled_ambiant_price"
    t.float    "uncontrolled_ambiant_price"
    t.boolean  "frozen_20_compliant",            default: false, null: false
    t.float    "fozen_20_price"
    t.string   "photo"
  end

  create_table "providers", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.string   "company_name"
    t.string   "company_address"
    t.string   "company_department"
    t.string   "contact_person"
    t.string   "contact_number"
    t.boolean  "admin"
    t.string   "postcode"
    t.string   "town"
    t.string   "county"
    t.string   "country"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "bookings", "couriers"
  add_foreign_key "bookings", "users"
end
