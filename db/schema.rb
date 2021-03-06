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

ActiveRecord::Schema.define(version: 20171210221044) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "billing_addresses", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address_1"
    t.string "address_2"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.string "country"
    t.string "house_nb"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "billing_profile_id"
    t.index ["billing_profile_id"], name: "index_billing_addresses_on_billing_profile_id"
  end

  create_table "billing_profiles", force: :cascade do |t|
    t.string "nickname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "campaigns", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.integer "order_quantity"
    t.index ["user_id"], name: "index_campaigns_on_user_id"
  end

  create_table "card_infos", force: :cascade do |t|
    t.string "card_nickname"
    t.string "card_type"
    t.string "name_on_card"
    t.string "card_number"
    t.string "exp_month"
    t.string "exp_year"
    t.string "ccv"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "billing_profile_id"
    t.date "birthdate"
    t.index ["billing_profile_id"], name: "index_card_infos_on_billing_profile_id"
  end

  create_table "cart_attempts", force: :cascade do |t|
    t.string "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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
    t.bigint "campaign_id"
    t.index ["campaign_id"], name: "index_merchant_sites_on_campaign_id"
  end

  create_table "proxy_lists", force: :cascade do |t|
    t.string "name"
    t.string "provider_name"
    t.boolean "enabled"
    t.string "proxy_collection"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "merchant_site_id"
    t.index ["merchant_site_id"], name: "index_proxy_lists_on_merchant_site_id"
  end

  create_table "shipping_addresses", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address_1"
    t.string "address_2"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.string "country"
    t.string "house_nb"
    t.string "phone"
    t.boolean "same_as_billing"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "billing_profile_id"
    t.index ["billing_profile_id"], name: "index_shipping_addresses_on_billing_profile_id"
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
    t.string "nickname"
    t.bigint "campaign_id"
    t.index ["campaign_id"], name: "index_site_accounts_on_campaign_id"
    t.index ["merchant_site_id"], name: "index_site_accounts_on_merchant_site_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.bigint "site_account_id"
    t.string "status"
    t.string "shoe_size"
    t.bigint "billing_profile_id"
    t.string "style_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "campaign_id"
    t.bigint "merchant_site_id"
    t.bigint "proxy_list_id"
    t.index ["billing_profile_id"], name: "index_tasks_on_billing_profile_id"
    t.index ["campaign_id"], name: "index_tasks_on_campaign_id"
    t.index ["merchant_site_id"], name: "index_tasks_on_merchant_site_id"
    t.index ["proxy_list_id"], name: "index_tasks_on_proxy_list_id"
    t.index ["site_account_id"], name: "index_tasks_on_site_account_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "billing_addresses", "billing_profiles"
  add_foreign_key "campaigns", "users"
  add_foreign_key "card_infos", "billing_profiles"
  add_foreign_key "merchant_sites", "campaigns"
  add_foreign_key "proxy_lists", "merchant_sites"
  add_foreign_key "shipping_addresses", "billing_profiles"
  add_foreign_key "site_accounts", "campaigns"
  add_foreign_key "site_accounts", "merchant_sites"
  add_foreign_key "tasks", "billing_profiles"
  add_foreign_key "tasks", "campaigns"
  add_foreign_key "tasks", "merchant_sites"
  add_foreign_key "tasks", "proxy_lists"
  add_foreign_key "tasks", "site_accounts"
end
