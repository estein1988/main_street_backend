# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_28_142416) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "businesses", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "password_digest"
    t.string "business_name"
    t.string "business_street"
    t.string "business_city"
    t.string "business_state"
    t.string "business_zip"
    t.string "business_phone"
    t.string "email"
    t.string "website"
    t.string "industry"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "financials", force: :cascade do |t|
    t.string "year"
    t.integer "sales_revenue"
    t.integer "service_revenue"
    t.integer "advertising"
    t.integer "cogs"
    t.integer "employee_benefits"
    t.integer "equipment"
    t.integer "insurance"
    t.integer "maintenance"
    t.integer "office_supplies"
    t.integer "rent"
    t.integer "r_and_d"
    t.integer "salaries"
    t.integer "software"
    t.integer "travel"
    t.integer "utilities"
    t.integer "website"
    t.integer "other_expense"
    t.integer "interest"
    t.integer "taxes"
    t.integer "ammoritization"
    t.integer "depreciation"
    t.bigint "business_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["business_id"], name: "index_financials_on_business_id"
  end

  add_foreign_key "financials", "businesses"
end
