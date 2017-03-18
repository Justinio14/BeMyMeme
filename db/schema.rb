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

ActiveRecord::Schema.define(version: 20170317160724) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blocks", force: :cascade do |t|
    t.integer  "blocked_user"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_blocks_on_user_id", using: :btree
  end

  create_table "chats", force: :cascade do |t|
    t.integer  "chat_initiator"
    t.integer  "chat_recipient"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "chat_id"
    t.integer  "user_id"
    t.index ["chat_id"], name: "index_chats_on_chat_id", using: :btree
    t.index ["user_id"], name: "index_chats_on_user_id", using: :btree
  end

  create_table "memes", force: :cascade do |t|
    t.string   "tag"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "meme_id"
    t.integer  "user_id"
    t.index ["meme_id"], name: "index_memes_on_meme_id", using: :btree
    t.index ["user_id"], name: "index_memes_on_user_id", using: :btree
  end

  create_table "memes_users", id: false, force: :cascade do |t|
    t.integer "meme_id", null: false
    t.integer "user_id", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.text     "message"
    t.integer  "sender_id"
    t.integer  "recipient_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "chat_id"
    t.index ["chat_id"], name: "index_messages_on_chat_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "chat_id"
    t.integer  "meme_id"
    t.text     "bio"
    t.date     "dob"
    t.string   "gender"
    t.string   "postcode"
    t.string   "location"
    t.string   "username"
    t.string   "interested_in"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.index ["chat_id"], name: "index_users_on_chat_id", using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["meme_id"], name: "index_users_on_meme_id", using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "blocks", "users"
  add_foreign_key "chats", "chats"
  add_foreign_key "chats", "users"
  add_foreign_key "memes", "memes"
  add_foreign_key "memes", "users"
  add_foreign_key "messages", "chats"
  add_foreign_key "users", "chats"
  add_foreign_key "users", "memes"
end
