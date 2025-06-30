# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_06_30_045341) do
  create_table "bill_lines", force: :cascade do |t|
    t.string "bl_bill"
    t.string "bl_product"
    t.integer "bl_cant"
    t.decimal "bl_total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bills", force: :cascade do |t|
    t.string "bill_client"
    t.datetime "bill_date"
    t.decimal "bill_subtotal"
    t.decimal "bill_total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "client_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "move_types", force: :cascade do |t|
    t.string "mt_name"
    t.string "mt_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_taxes", force: :cascade do |t|
    t.string "tax_name"
    t.decimal "tax_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name", null: false
    t.decimal "product_price", precision: 10, scale: 2, null: false
    t.string "product_description", null: false
    t.integer "product_stock", null: false
    t.integer "product_tax_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_tax_id"], name: "index_products_on_product_tax_id"
  end

  create_table "stock_histories", force: :cascade do |t|
    t.string "sh_product"
    t.string "sh_move_type"
    t.integer "sh_cant"
    t.datetime "sh_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
