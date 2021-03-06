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

ActiveRecord::Schema.define(version: 20141023235334) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "categories_products", id: false, force: true do |t|
    t.integer "product_id"
    t.integer "category_id"
  end

  create_table "merchants", force: true do |t|
    t.string   "email"
    t.string   "user_name"
    t.string   "shop_name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

  create_table "order_items", force: true do |t|
    t.integer  "product_id"
    t.integer  "order_id"
    t.integer  "product_quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "mailing_address"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "card_number"
    t.string   "expiration_date"
    t.string   "order_status"
  end

  create_table "products", force: true do |t|
    t.integer  "merchant_id"
    t.string   "name"
    t.decimal  "price"
    t.text     "description"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: true do |t|
    t.string   "reviewer"
    t.text     "review"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "product_id"
  end

end
