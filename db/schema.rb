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

ActiveRecord::Schema.define(version: 20160418110536) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "twitter_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "composers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "difficulties", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "difficulty_songs", force: :cascade do |t|
    t.integer  "song_id",       null: false
    t.integer  "difficulty_id", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "difficulty_songs", ["difficulty_id"], name: "index_difficulty_songs_on_difficulty_id", using: :btree
  add_index "difficulty_songs", ["song_id"], name: "index_difficulty_songs_on_song_id", using: :btree

  create_table "illustrations", force: :cascade do |t|
    t.integer  "song_id"
    t.binary   "illustration"
    t.string   "content_type"
    t.integer  "illustrator_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "illustrators", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "information", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "publish_date"
    t.boolean  "draft"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "songs", force: :cascade do |t|
    t.string   "title"
    t.string   "title_kana"
    t.datetime "release_date"
    t.integer  "composer_id"
    t.integer  "illustration_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "vocalist_songs", force: :cascade do |t|
    t.integer  "song_id",     null: false
    t.integer  "vocalist_id", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "vocalist_songs", ["song_id"], name: "index_vocalist_songs_on_song_id", using: :btree
  add_index "vocalist_songs", ["vocalist_id"], name: "index_vocalist_songs_on_vocalist_id", using: :btree

  create_table "vocalists", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
