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

ActiveRecord::Schema.define(version: 2019_08_08_053255) do

  create_table "addresses", force: :cascade do |t|
    t.string "user_id", limit: 50
    t.string "street", limit: 50
    t.string "door_no", limit: 50
    t.string "city", limit: 100
    t.string "state", limit: 100
    t.integer "pinn_code", limit: 100
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", limit: 50, null: false
    t.string "last_name", limit: 50, null: false
    t.string "email", limit: 50
    t.string "password", limit: 15
    t.boolean "terms_and_conditions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "company"
    t.index ["first_name"], name: "index_users_on_first_name"
  end

end
