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

ActiveRecord::Schema.define(version: 20170510085204) do

  create_table "letters", force: :cascade do |t|
    t.string   "teachertitle"
    t.string   "yourname"
    t.string   "myname"
    t.text     "greet"
    t.string   "pasthappen"
    t.text     "pastdo"
    t.text     "nowchange"
    t.text     "nowhappen"
    t.text     "addition"
    t.text     "thanks"
    t.string   "studenttite"
    t.string   "pass"
    t.text     "finishword"
    t.string   "whatdo"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
