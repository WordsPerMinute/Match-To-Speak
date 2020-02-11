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

ActiveRecord::Schema.define(version: 2020_02_11_003249) do

  create_table "account_sessions", force: :cascade do |t|
    t.integer "account_id"
    t.integer "session_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_id"], name: "index_account_sessions_on_account_id"
    t.index ["session_id"], name: "index_account_sessions_on_session_id"
  end

  create_table "accounts", force: :cascade do |t|
    t.string "name"
    t.integer "zip"
    t.string "learning"
    t.string "teaching"
    t.string "bio"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.integer "learner_id"
    t.integer "teacher_id"
    t.string "language"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["learner_id"], name: "index_sessions_on_learner_id"
    t.index ["teacher_id"], name: "index_sessions_on_teacher_id"
  end

  add_foreign_key "sessions", "learners"
  add_foreign_key "sessions", "teachers"
end
