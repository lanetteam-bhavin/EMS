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

ActiveRecord::Schema.define(version: 20130703072122) do

  create_table "admins", force: true do |t|
    t.string   "AdminName",       limit: 25
    t.string   "AdminEmail",      limit: 25
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "token"
  end

  create_table "designations", force: true do |t|
    t.string   "desig_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", force: true do |t|
    t.string   "FirstName"
    t.string   "LastName"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "designation_id"
    t.integer  "empclass"
    t.boolean  "IsActive"
    t.boolean  "IsDelete"
    t.string   "image"
  end

  create_table "employeeskills", force: true do |t|
    t.integer  "employee_id"
    t.integer  "skill_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "empmasters", force: true do |t|
    t.string   "FirstName",   limit: 30
    t.string   "LastName",    limit: 30
    t.string   "email",       limit: 30
    t.string   "address",     limit: 200
    t.string   "city",        limit: 100
    t.string   "state",       limit: 100
    t.integer  "designation", limit: 8
    t.integer  "class"
    t.boolean  "IsActive"
    t.boolean  "IsDelete"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skills", force: true do |t|
    t.string   "skill_name", limit: 30
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
