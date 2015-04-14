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

ActiveRecord::Schema.define(version: 20150408201502) do

  create_table "Bills_Reminders", id: false, force: true do |t|
    t.integer "bill_id",     null: false
    t.integer "reminder_id", null: false
  end

  add_index "Bills_Reminders", ["bill_id", "reminder_id"], name: "index_Bills_Reminders_on_bill_id_and_reminder_id"
  add_index "Bills_Reminders", ["reminder_id", "bill_id"], name: "index_Bills_Reminders_on_reminder_id_and_bill_id"

  create_table "Bills_Users", id: false, force: true do |t|
    t.integer "user_id", null: false
    t.integer "bill_id", null: false
  end

  add_index "Bills_Users", ["bill_id", "user_id"], name: "index_Bills_Users_on_bill_id_and_user_id"
  add_index "Bills_Users", ["user_id", "bill_id"], name: "index_Bills_Users_on_user_id_and_bill_id"

  create_table "bills", force: true do |t|
    t.string   "name"
    t.string   "category"
    t.string   "paymentType"
    t.string   "loginPage"
    t.datetime "dueDate"
    t.string   "repeat"
    t.float    "amountLo"
    t.float    "amountHi"
    t.integer  "snoozeDuration"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "user_name"
  end

  create_table "reminders", force: true do |t|
    t.datetime "remindDate"
    t.string   "remindText"
    t.string   "remindType"
    t.boolean  "isSnoozed"
    t.integer  "snoozeCount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "bill_id"
    t.string   "user_name"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "first"
    t.string   "last"
    t.string   "phone"
    t.string   "password"
    t.boolean  "verifiedAcct"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
