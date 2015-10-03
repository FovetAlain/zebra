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

ActiveRecord::Schema.define(version: 20151001153716) do

  create_table "carts", force: :cascade do |t|
    t.decimal  "shipping",   precision: 12, scale: 3, default: 5.9
    t.decimal  "total",      precision: 12, scale: 3
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "marque"
    t.text     "description"
    t.decimal  "prix"
    t.text     "photos"
    t.text     "tailles"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "items", ["category_id"], name: "index_items_on_category_id"

  create_table "order_items", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "cart_id"
    t.decimal  "unit_price", precision: 12, scale: 3
    t.integer  "taille"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "order_items", ["cart_id"], name: "index_order_items_on_cart_id"
  add_index "order_items", ["item_id"], name: "index_order_items_on_item_id"

end
