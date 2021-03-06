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

ActiveRecord::Schema.define(version: 20160629033046) do

  create_table "computers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "resourcegroupname"
    t.index ["name"], name: "index_computers_on_name", using: :btree
    t.index ["resourcegroupname"], name: "index_computers_on_resourcegroupname", using: :btree
  end

  create_table "dave_stuffs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "saying"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["saying"], name: "index_dave_stuffs_on_saying", using: :btree
  end

end
