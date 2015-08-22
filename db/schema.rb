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

ActiveRecord::Schema.define(version: 20150822114850) do

  create_table "batches", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.string   "year"
  end

  create_table "colleges", force: :cascade do |t|
    t.string   "name"
    t.integer  "univercity_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "city"
    t.string   "state"
    t.string   "slug"
  end

  add_index "colleges", ["univercity_id"], name: "index_colleges_on_univercity_id"

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.integer  "batch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  add_index "courses", ["batch_id"], name: "index_courses_on_batch_id"

  create_table "faculties", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], name: "index_roles_on_name"

  create_table "sections", force: :cascade do |t|
    t.integer  "batch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  add_index "sections", ["batch_id"], name: "index_sections_on_batch_id"

  create_table "subjects", force: :cascade do |t|
    t.integer  "course_id"
    t.integer  "faculty_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  add_index "subjects", ["course_id"], name: "index_subjects_on_course_id"
  add_index "subjects", ["faculty_id"], name: "index_subjects_on_faculty_id"

  create_table "time_tables", force: :cascade do |t|
    t.integer  "section_id"
    t.integer  "course_id"
    t.integer  "batch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "day"
    t.string   "l1"
    t.string   "l2"
    t.string   "l3"
    t.string   "l4"
    t.string   "l5"
    t.string   "l6"
    t.string   "l7"
  end

  add_index "time_tables", ["batch_id"], name: "index_time_tables_on_batch_id"
  add_index "time_tables", ["course_id"], name: "index_time_tables_on_course_id"
  add_index "time_tables", ["section_id"], name: "index_time_tables_on_section_id"

  create_table "univercities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "slug"
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "uid"
    t.string   "provider"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.string   "image"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"

end
