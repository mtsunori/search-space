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

ActiveRecord::Schema.define(version: 20191023062724) do

  create_table "shops", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",                                      null: false
    t.integer  "price",                                     null: false
    t.text     "explanation",   limit: 65535,               null: false
    t.integer  "capacity",                                  null: false
    t.integer  "user_id",                                   null: false
    t.text     "address",       limit: 65535,               null: false
    t.string   "house_number",                              null: false
    t.string   "event_status",                default: "0", null: false
    t.integer  "borrower_id"
    t.string   "lending_time",                              null: false
    t.string   "business_hour"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.index ["name"], name: "index_shops_on_name", using: :btree
    t.index ["price"], name: "index_shops_on_price", using: :btree
    t.index ["user_id"], name: "index_shops_on_user_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",                                null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "shops", "users"
end
