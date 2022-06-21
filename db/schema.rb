# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_06_21_174607) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accomodations", force: :cascade do |t|
    t.string "place_name"
    t.string "accomodation_type"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer "price"
    t.string "address"
    t.string "longitude"
    t.string "latitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "trip_id", null: false
    t.index ["trip_id"], name: "index_accomodations_on_trip_id"
  end

  create_table "activities", force: :cascade do |t|
    t.string "place_name"
    t.string "activity_type"
    t.datetime "start_date"
    t.integer "price"
    t.string "address"
    t.string "longitude"
    t.string "latitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "trip_id", null: false
    t.datetime "end_date"
    t.index ["trip_id"], name: "index_activities_on_trip_id"
  end

  create_table "transportations", force: :cascade do |t|
    t.string "name"
    t.string "transportation_type"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "start_address"
    t.string "end_address"
    t.string "start_longitude"
    t.string "start_latitude"
    t.string "end_longitude"
    t.string "end_latitude"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "trip_id", null: false
    t.index ["trip_id"], name: "index_transportations_on_trip_id"
  end

  create_table "trips", force: :cascade do |t|
    t.string "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "status"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_trips_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "accomodations", "trips"
  add_foreign_key "activities", "trips"
  add_foreign_key "transportations", "trips"
  add_foreign_key "trips", "users"
end
