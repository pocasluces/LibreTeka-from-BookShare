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

ActiveRecord::Schema.define(version: 20111024165639) do

  create_table "authors", force: :cascade do |t|
    t.string   "name",       limit: 255, default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "authors_titles", id: false, force: :cascade do |t|
    t.integer "author_id"
    t.integer "title_id"
  end

  add_index "authors_titles", ["author_id"], name: "index_authors_titles_on_author_id"
  add_index "authors_titles", ["title_id"], name: "index_authors_titles_on_title_id"

  create_table "bans", force: :cascade do |t|
    t.datetime "unbanned_at"
    t.integer  "user_id"
    t.integer  "banner"
    t.text     "reason"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "unbanner"
  end

  create_table "books", force: :cascade do |t|
    t.integer  "title_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "status",     default: 0
  end

  create_table "loans", force: :cascade do |t|
    t.integer  "book_id"
    t.integer  "lender_id"
    t.integer  "borrower_id"
    t.datetime "returned"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "searches", force: :cascade do |t|
    t.string   "query",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "results"
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name",       limit: 255, default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjects_titles", id: false, force: :cascade do |t|
    t.integer "subject_id"
    t.integer "title_id"
  end

  create_table "titles", force: :cascade do |t|
    t.string   "isbn13",      limit: 13,  default: ""
    t.string   "title",       limit: 255, default: ""
    t.string   "subtitle",    limit: 255
    t.text     "description"
    t.string   "image_url",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "login",               limit: 255, default: "",     null: false
    t.string   "email",               limit: 255, default: "",     null: false
    t.string   "crypted_password",    limit: 255, default: "",     null: false
    t.string   "password_salt",       limit: 255, default: "",     null: false
    t.string   "persistence_token",   limit: 255, default: "",     null: false
    t.string   "single_access_token", limit: 255, default: "",     null: false
    t.string   "perishable_token",    limit: 255, default: "",     null: false
    t.integer  "login_count",                     default: 0,      null: false
    t.integer  "failed_login_count",              default: 0,      null: false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip",    limit: 255
    t.string   "last_login_ip",       limit: 255
    t.string   "first_name",          limit: 255
    t.string   "last_name",           limit: 255
    t.string   "address1",            limit: 255
    t.string   "address2",            limit: 255
    t.string   "city",                limit: 255
    t.string   "county",              limit: 255
    t.string   "postcode",            limit: 255
    t.string   "phone",               limit: 255
    t.string   "status",              limit: 255, default: "user"
    t.boolean  "banned",                          default: false
  end

  create_table "watchings", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "book_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
