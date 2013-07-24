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

ActiveRecord::Schema.define(:version => 20130724004259) do

  create_table "avaliations", :force => true do |t|
    t.integer  "step"
    t.text     "avaliation"
    t.integer  "candidate_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "avaliations", ["candidate_id"], :name => "index_avaliations_on_candidate_id"

  create_table "candidates", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "telephone"
    t.string   "facebook"
    t.text     "about"
    t.integer  "selection_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "enterprises", :force => true do |t|
    t.string   "name"
    t.string   "cnpj"
    t.text     "description"
    t.string   "telephone"
    t.string   "email"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "selections", :force => true do |t|
    t.string  "title"
    t.text    "description"
    t.date    "entries_end_date"
    t.integer "enterprise_id"
  end

  create_table "steps", :force => true do |t|
    t.time     "hour"
    t.date     "date"
    t.string   "title"
    t.text     "description"
    t.integer  "selection_id"
    t.string   "attach_file_name"
    t.string   "attach_content_type"
    t.integer  "attach_file_size"
    t.datetime "attach_updated_at"
    t.boolean  "attach_file"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.integer  "enterprise_id"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
