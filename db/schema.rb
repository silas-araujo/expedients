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

ActiveRecord::Schema.define(version: 2020_07_14_142340) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "destinations", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exp_types", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "expedients", force: :cascade do |t|
    t.date "exp_date"
    t.string "topic"
    t.string "spu"
    t.bigint "exp_type_id"
    t.bigint "destination_id"
    t.bigint "responsible_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["destination_id"], name: "index_expedients_on_destination_id"
    t.index ["exp_type_id"], name: "index_expedients_on_exp_type_id"
    t.index ["responsible_id"], name: "index_expedients_on_responsible_id"
  end

  create_table "responsibles", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "expedients", "destinations"
  add_foreign_key "expedients", "exp_types"
  add_foreign_key "expedients", "responsibles"
end
