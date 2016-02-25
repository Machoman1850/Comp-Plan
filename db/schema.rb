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

ActiveRecord::Schema.define(version: 20160225191432) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "capital_raiseds", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comp_items", force: :cascade do |t|
    t.string   "company_title"
    t.boolean  "founder"
    t.boolean  "full_time"
    t.integer  "base_salary"
    t.integer  "bonus"
    t.float    "percent_of_shares"
    t.datetime "company_founded"
    t.integer  "head_count_id"
    t.integer  "revenue_id"
    t.integer  "capital_raised_id"
    t.integer  "funding_round_id"
    t.integer  "development_stage_id"
    t.integer  "industry_id"
    t.integer  "employee_region_id"
    t.integer  "primary_title_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "comp_items", ["capital_raised_id"], name: "index_comp_items_on_capital_raised_id", using: :btree
  add_index "comp_items", ["development_stage_id"], name: "index_comp_items_on_development_stage_id", using: :btree
  add_index "comp_items", ["employee_region_id"], name: "index_comp_items_on_employee_region_id", using: :btree
  add_index "comp_items", ["funding_round_id"], name: "index_comp_items_on_funding_round_id", using: :btree
  add_index "comp_items", ["head_count_id"], name: "index_comp_items_on_head_count_id", using: :btree
  add_index "comp_items", ["industry_id"], name: "index_comp_items_on_industry_id", using: :btree
  add_index "comp_items", ["primary_title_id"], name: "index_comp_items_on_primary_title_id", using: :btree
  add_index "comp_items", ["revenue_id"], name: "index_comp_items_on_revenue_id", using: :btree

  create_table "development_stages", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employee_regions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "funding_rounds", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "head_counts", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "industries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "primary_titles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "revenues", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "comp_items", "capital_raiseds"
  add_foreign_key "comp_items", "development_stages"
  add_foreign_key "comp_items", "employee_regions"
  add_foreign_key "comp_items", "funding_rounds"
  add_foreign_key "comp_items", "head_counts"
  add_foreign_key "comp_items", "industries"
  add_foreign_key "comp_items", "primary_titles"
  add_foreign_key "comp_items", "revenues"
end
