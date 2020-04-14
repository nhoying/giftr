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

ActiveRecord::Schema.define(version: 2020_04_14_195951) do

  create_table "exchanges", force: :cascade do |t|
    t.string "name"
    t.string "uid"
    t.string "description"
    t.string "imageurl"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "gifts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "pictureurl"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "exchanges_id"
    t.index ["exchanges_id"], name: "index_players_on_exchanges_id"
  end

  create_table "turn_action_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "turnactions", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "turns_id"
    t.integer "players_id"
    t.integer "turn_action_types_id"
    t.integer "gifts_id"
    t.index ["gifts_id"], name: "index_turnactions_on_gifts_id"
    t.index ["players_id"], name: "index_turnactions_on_players_id"
    t.index ["turn_action_types_id"], name: "index_turnactions_on_turn_action_types_id"
    t.index ["turns_id"], name: "index_turnactions_on_turns_id"
  end

  create_table "turns", force: :cascade do |t|
    t.integer "turnnumber"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "exchanges_id"
    t.index ["exchanges_id"], name: "index_turns_on_exchanges_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "google_token"
    t.string "google_refresh_token"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "email"
    t.string "facebook_uid"
    t.string "password_digest"
    t.string "authtype"
  end

end
