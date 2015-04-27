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

ActiveRecord::Schema.define(version: 20150427003157) do

  create_table "Bills_Reminders", id: false, force: :cascade do |t|
    t.integer "bill_id",     null: false
    t.integer "reminder_id", null: false
  end

  add_index "Bills_Reminders", ["bill_id", "reminder_id"], name: "index_Bills_Reminders_on_bill_id_and_reminder_id"
  add_index "Bills_Reminders", ["reminder_id", "bill_id"], name: "index_Bills_Reminders_on_reminder_id_and_bill_id"

  create_table "Bills_Users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "bill_id", null: false
  end

  add_index "Bills_Users", ["bill_id", "user_id"], name: "index_Bills_Users_on_bill_id_and_user_id"
  add_index "Bills_Users", ["user_id", "bill_id"], name: "index_Bills_Users_on_user_id_and_bill_id"

  create_table "bills", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.string   "category",       limit: 255
    t.string   "paymentType",    limit: 255
    t.string   "loginPage",      limit: 255
    t.datetime "dueDate"
    t.string   "repeat",         limit: 255
    t.float    "amountLo"
    t.float    "amountHi"
    t.integer  "snoozeDuration"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "user_name",      limit: 255
    t.datetime "reminder1"
    t.datetime "reminder2"
    t.datetime "permDueDate"
  end

  create_table "crono_jobs", force: :cascade do |t|
    t.string   "job_id",            null: false
    t.text     "log"
    t.datetime "last_performed_at"
    t.boolean  "healthy"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "crono_jobs", ["job_id"], name: "index_crono_jobs_on_job_id", unique: true

  create_table "logs", force: :cascade do |t|
    t.string   "info",       limit: 255
    t.string   "date",       limit: 255
    t.string   "time",       limit: 255
    t.string   "eventType",  limit: 255
    t.string   "user_name",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "hide"
  end

  create_table "notif_types", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "destination", limit: 255
    t.string   "notifMethod", limit: 255
    t.string   "carrier",     limit: 255
    t.boolean  "verified"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "user_name",   limit: 255
  end

  create_table "reminders", force: :cascade do |t|
    t.datetime "remindDate"
    t.string   "remindName",  limit: 255
    t.string   "remindType",  limit: 255
    t.boolean  "isSnoozed"
    t.integer  "snoozeCount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "bill_id"
    t.string   "user_name",   limit: 255
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",               limit: 255
    t.string   "email",                  limit: 255
    t.string   "first",                  limit: 255
    t.string   "last",                   limit: 255
    t.string   "phone",                  limit: 255
    t.string   "provider",               limit: 255
    t.boolean  "verifiedAcct"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
