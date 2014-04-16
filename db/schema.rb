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

ActiveRecord::Schema.define(version: 20140409165153) do

  create_table "gymweights", force: true do |t|
    t.string   "weights_workout_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "workout_id"
  end

  create_table "plans", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "days_performed"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "stats", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "weight"
    t.integer  "height"
    t.string   "gender"
    t.integer  "goal_weight"
    t.integer  "age"
  end

  create_table "supplements", force: true do |t|
    t.string   "description"
    t.string   "brand"
    t.string   "opinion"
    t.integer  "serving_size"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "uploadedplans", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.string   "days_performed"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "profile_name"
    t.string   "add_name_on"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "workout_sets", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "workout_id"
    t.integer  "reps"
    t.integer  "weight"
  end

  create_table "workouts", force: true do |t|
    t.string   "details"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.integer  "user_id"
    t.integer  "plan_id"
    t.integer  "weight"
    t.integer  "duration_of_workout"
    t.string   "weights_workout_type"
    t.string   "run_workout_type"
    t.string   "swim_workout_type"
    t.string   "bike_workout_type"
    t.string   "other_workout_type"
    t.string   "name"
    t.integer  "gymweight_id"
    t.integer  "distance"
    t.string   "weight_details"
  end

end
