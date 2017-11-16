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

ActiveRecord::Schema.define(version: 20171116024455) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer "priority", default: 0, null: false
    t.integer "attempts", default: 0, null: false
    t.text "handler", null: false
    t.text "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string "locked_by"
    t.string "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["priority", "run_at"], name: "delayed_jobs_priority"
  end

  create_table "merchant_sites", force: :cascade do |t|
    t.string "name"
    t.string "base_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "site_accounts", force: :cascade do |t|
    t.string "site"
    t.boolean "guest"
    t.text "email"
    t.string "password"
    t.string "positive_keyword"
    t.string "negative_keyword"
    t.string "style_no"
    t.string "size"
    t.string "early"
    t.string "link"
    t.string "page_monitor"
    t.string "notification_text_no"
    t.text "notification_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "merchant_site_id"
    t.index ["merchant_site_id"], name: "index_site_accounts_on_merchant_site_id"
  end

  add_foreign_key "site_accounts", "merchant_sites"
end
