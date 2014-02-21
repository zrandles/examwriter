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

ActiveRecord::Schema.define(version: 20140221080503) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exams", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.string   "prompt"
    t.string   "option_a"
    t.string   "option_b"
    t.string   "option_c"
    t.string   "option_d"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "exam_id"
  end

  add_index "questions", ["exam_id"], name: "index_questions_on_exam_id", using: :btree

end