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

ActiveRecord::Schema.define(version: 2022_11_18_052835) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "movies", force: :cascade do |t|
    t.string "movie_img"
    t.text "movie_title"
    t.text "movie_ge"
    t.integer "movie_time"
    t.text "movie_desc"
    t.integer "movie_age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "screens", force: :cascade do |t|
    t.integer "sc_start"
    t.integer "sc_end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "movie_id"
    t.bigint "theater_room_id"
    t.index ["movie_id"], name: "index_screens_on_movie_id"
    t.index ["theater_room_id"], name: "index_screens_on_theater_room_id"
  end

  create_table "seats", force: :cascade do |t|
    t.string "seat_name"
    t.boolean "seat_use"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "theater_room_id"
    t.index ["theater_room_id"], name: "index_seats_on_theater_room_id"
  end

  create_table "theater_rooms", force: :cascade do |t|
    t.string "tr_name"
    t.integer "tr_seat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "theater_id"
    t.index ["theater_id"], name: "index_theater_rooms_on_theater_id"
  end

  create_table "theaters", force: :cascade do |t|
    t.string "th_name"
    t.string "th_region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ticketings", force: :cascade do |t|
    t.integer "tk_account"
    t.decimal "tk_price"
    t.string "tk_seat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "screen_id"
    t.index ["screen_id"], name: "index_ticketings_on_screen_id"
    t.index ["user_id"], name: "index_ticketings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "phone"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "screens", "movies"
  add_foreign_key "screens", "theater_rooms"
  add_foreign_key "seats", "theater_rooms"
  add_foreign_key "theater_rooms", "theaters"
  add_foreign_key "ticketings", "screens"
  add_foreign_key "ticketings", "users"
end
