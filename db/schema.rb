# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20091225194934) do

  create_table "cardlists", :force => true do |t|
    t.string   "title"
    t.integer  "user_id",    :limit => 11, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cards", :force => true do |t|
    t.string   "title"
    t.string   "expansion"
    t.string   "side"
    t.string   "thumbnail_url"
    t.string   "image_url"
    t.string   "vslip_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "vslip_file_name"
    t.string   "vslip_content_type"
    t.integer  "vslip_file_size",              :limit => 11
    t.datetime "vslip_updated_at"
    t.string   "card_image_name"
    t.string   "card_image_content_type"
    t.integer  "card_image_file_size",         :limit => 11
    t.datetime "card_image_updated_at"
    t.string   "back_vslip_file_name"
    t.string   "back_vslip_content_type"
    t.integer  "back_vslip_file_size",         :limit => 11
    t.datetime "back_vslip_updated_at"
    t.string   "back_card_image_name"
    t.string   "back_card_image_content_type"
    t.integer  "back_card_image_file_size",    :limit => 11
    t.datetime "back_card_image_updated_at"
    t.string   "card_type"
  end

  create_table "line_items", :force => true do |t|
    t.integer  "quantity",    :limit => 11
    t.integer  "card_id",     :limit => 11, :null => false
    t.integer  "cardlist_id", :limit => 11, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "hashed_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
