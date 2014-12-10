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

ActiveRecord::Schema.define(version: 20141210184629) do

  create_table "concepts", force: true do |t|
    t.string   "concept"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tips", force: true do |t|
    t.string   "problem"
    t.string   "error"
    t.string   "solution"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "concept_id"
    t.integer  "user_id"
    t.string   "title"
  end

  add_index "tips", ["concept_id"], name: "index_tips_on_concept_id"
  add_index "tips", ["user_id"], name: "index_tips_on_user_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "password"
    t.string   "role"
    t.string   "email"
    t.string   "blog"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "linkedin"
    t.integer  "points"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

  create_table "votes", force: true do |t|
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "tip_id"
    t.string   "user_id"
  end

  add_index "votes", ["tip_id"], name: "index_votes_on_tip_id"
  add_index "votes", ["user_id"], name: "index_votes_on_user_id"

end
