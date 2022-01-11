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

ActiveRecord::Schema.define(version: 20220111090251) do

  create_table "account_details", force: :cascade do |t|
    t.string   "account_number"
    t.string   "balance_sepcified"
    t.decimal  "current_balance"
    t.decimal  "disbursed_amount"
    t.string   "institution"
    t.decimal  "last_payment"
    t.string   "last_payment_date"
    t.string   "loan_purpose"
    t.decimal  "past_due_amount"
    t.decimal  "write_off_amount"
    t.integer  "customer_credit_report_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "customer_credit_reports", force: :cascade do |t|
    t.integer  "no_of_active_accounts"
    t.decimal  "total_balance_amount"
    t.integer  "no_of_past_due_account"
    t.decimal  "total_past_due"
    t.decimal  "no_of_write_offs"
    t.decimal  "total_written_off_amount"
    t.decimal  "total_monthly_payment_amount"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "mfi_reports", force: :cascade do |t|
    t.integer  "ref_number"
    t.string   "inquiry_purpose"
    t.decimal  "transaction_amount"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_name"
    t.string   "additional_name_type"
    t.string   "additional_name"
    t.string   "address"
    t.integer  "pin_code"
    t.datetime "date_of_birth"
    t.string   "gender"
    t.integer  "ration_card"
    t.integer  "voter_id"
    t.integer  "national_id"
    t.integer  "phone_home"
    t.integer  "phone_mob"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "refer_number"
  end

  create_table "store_credit_reports", force: :cascade do |t|
    t.text     "desc_response"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.date     "bdate"
    t.string   "email"
    t.string   "encrypted_password"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end
