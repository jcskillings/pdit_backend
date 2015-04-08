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

ActiveRecord::Schema.define(version: 20150408001755) do

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
  end

  create_table "reminders", force: true do |t|
    t.datetime "remindDate"
    t.string   "remindText"
    t.string   "remindType"
    t.boolean  "isSnoozed"
    t.integer  "snoozeCount"
    t.datetime "created_at"
    t.datetime "updated_at"
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
