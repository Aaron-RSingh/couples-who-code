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

ActiveRecord::Schema.define(version: 2019_07_29_150558) do

  create_table "connections", force: :cascade do |t|
    t.integer "companion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "meetup_id"
    t.integer "user_id"
    t.index ["meetup_id"], name: "index_connections_on_meetup_id"
    t.index ["user_id"], name: "index_connections_on_user_id"
  end

  create_table "interests", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", force: :cascade do |t|
    t.boolean "heart"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "interest_id"
    t.index ["interest_id"], name: "index_likes_on_interest_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "meetups", force: :cascade do |t|
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password_digest"
    t.string "tagline"
    t.integer "age"
    t.text "bio"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
