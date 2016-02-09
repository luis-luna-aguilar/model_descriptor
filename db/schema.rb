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

ActiveRecord::Schema.define(version: 20160209170604) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "actions_models", id: false, force: :cascade do |t|
    t.integer "action_id", null: false
    t.integer "model_id",  null: false
  end

  add_index "actions_models", ["action_id", "model_id"], name: "index_actions_models_on_action_id_and_model_id", using: :btree
  add_index "actions_models", ["model_id", "action_id"], name: "index_actions_models_on_model_id_and_action_id", using: :btree

  create_table "applications", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "has_devise", default: false
    t.boolean  "has_api",    default: false
  end

  create_table "fields", force: :cascade do |t|
    t.string   "name"
    t.integer  "attr_type"
    t.string   "default"
    t.boolean  "required"
    t.integer  "model_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.boolean  "editable_by_user", default: true
  end

  add_index "fields", ["model_id"], name: "index_fields_on_model_id", using: :btree

  create_table "models", force: :cascade do |t|
    t.string   "name"
    t.integer  "application_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "models", ["application_id"], name: "index_models_on_application_id", using: :btree

  add_foreign_key "fields", "models"
  add_foreign_key "models", "applications"
end
