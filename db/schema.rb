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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120104021551) do

  create_table "books", :force => true do |t|
    t.string   "name"
    t.string   "author"
    t.date     "pub_date"
    t.string   "douban_url"
    t.string   "publisher"
    t.decimal  "price"
    t.string   "status"
    t.integer  "borrower_id", :limit => 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "histories", :force => true do |t|
    t.integer  "borrower_id"
    t.integer  "book_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "ext"
    t.string   "email"
    t.string   "password"
    t.string   "is_admin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
