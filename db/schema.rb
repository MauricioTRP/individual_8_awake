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

ActiveRecord::Schema[7.0].define(version: 2022_09_15_032940) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "degrees", force: :cascade do |t|
    t.string "degree"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "degrees_users", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "degree_id", null: false
  end

  create_table "hobbies", force: :cascade do |t|
    t.string "hobby"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hobbies_users", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "hobby_id", null: false
  end

  create_table "industries", force: :cascade do |t|
    t.string "industry"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["industry"], name: "index_industries_on_industry", unique: true
  end

  create_table "jobs", force: :cascade do |t|
    t.string "job_title"
    t.bigint "industry_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["industry_id"], name: "index_jobs_on_industry_id"
  end

  create_table "jobs_users", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "job_id", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "jobs", "industries"
end
