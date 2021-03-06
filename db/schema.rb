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

ActiveRecord::Schema.define(version: 20171201135158) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "baskets", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_baskets_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "content"
    t.integer "new_message", default: 0
    t.integer "new_message_seller", default: 0
    t.integer "new_message_buyer", default: 0
    t.index ["product_id"], name: "index_messages_on_product_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.integer "price"
    t.text "description"
    t.boolean "availability"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "quick_description"
    t.string "title"
    t.string "category"
    t.bigint "basket_id"
    t.index ["basket_id"], name: "index_products_on_basket_id"
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "reponses", force: :cascade do |t|
    t.bigint "message_id"
    t.bigint "user_id"
    t.text "texte"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["message_id"], name: "index_reponses_on_message_id"
    t.index ["user_id"], name: "index_reponses_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "surname", default: ""
    t.string "name", default: ""
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin"
    t.integer "age"
    t.string "profil_picture"
    t.string "company_name"
    t.text "failure_history"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.integer "new_message", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "baskets", "users"
  add_foreign_key "messages", "products"
  add_foreign_key "messages", "users"
  add_foreign_key "products", "baskets"
  add_foreign_key "products", "users"
  add_foreign_key "reponses", "messages"
  add_foreign_key "reponses", "users"
end
