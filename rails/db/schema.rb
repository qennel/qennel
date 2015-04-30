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

ActiveRecord::Schema.define(version: 20150430033424) do

  create_table "professions", force: :cascade do |t|
    t.string "name",     limit: 255, default: "", null: false
    t.string "nickname", limit: 512
  end

  create_table "programming_languages", force: :cascade do |t|
    t.string "name", limit: 255
  end

  add_index "programming_languages", ["name"], name: "programming_language_name", length: {"name"=>10}, using: :btree

  create_table "programming_platforms", force: :cascade do |t|
    t.string  "name",                    limit: 255
    t.integer "programming_language_id", limit: 4
    t.string  "type",                    limit: 11
  end

  add_index "programming_platforms", ["name"], name: "programming_platform_name", length: {"name"=>100}, using: :btree

  create_table "roles", force: :cascade do |t|
    t.integer "profession_id", limit: 4,                null: false
    t.string  "name",          limit: 255, default: "", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "yc_companies", id: false, force: :cascade do |t|
    t.string "status",      limit: 255
    t.string "name",        limit: 255
    t.string "url",         limit: 255
    t.string "cohost_date", limit: 255
    t.string "exit_value",  limit: 255
    t.string "funding",     limit: 255
  end

end
