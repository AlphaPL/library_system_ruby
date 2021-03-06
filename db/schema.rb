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

ActiveRecord::Schema.define(version: 20190627064937) do

  create_table "book_histories", force: :cascade do |t|
    t.integer  "book_id"
    t.integer  "user_id"
    t.datetime "chk_out_dt"
    t.datetime "chk_in_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["book_id"], name: "index_book_histories_on_book_id"
    t.index ["user_id"], name: "index_book_histories_on_user_id"
  end

  create_table "books", force: :cascade do |t|
    t.string   "title",        limit: 100
    t.text     "description",  limit: 500
    t.string   "author",       limit: 100
    t.string   "isbn",         limit: 13
    t.boolean  "is_borrowed",              default: false
    t.boolean  "is_deleted",               default: false
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.integer  "user_id"
    t.boolean  "is_requested",             default: false
    t.integer  "requested_by"
    t.index ["user_id"], name: "index_books_on_user_id"
  end

  create_table "searches", force: :cascade do |t|
    t.string   "isbn"
    t.string   "title",       limit: 100
    t.text     "description", limit: 500
    t.string   "author",      limit: 100
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "password_digest", limit: 255
    t.string   "email",           limit: 255
    t.string   "address",         limit: 255
    t.string   "phone",           limit: 9
    t.boolean  "is_admin",                    default: false
    t.boolean  "is_deleted",                  default: false
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

end
