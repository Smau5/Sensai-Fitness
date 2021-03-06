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

ActiveRecord::Schema.define(version: 2019_05_14_214405) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "company_lead_sources", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "company_lead_transaction_sources", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "company_lead_transactions", force: :cascade do |t|
    t.string "description"
    t.integer "company_lead_id"
    t.integer "company_sale_representative_id"
    t.integer "company_lead_transaction_source_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "company_leads", force: :cascade do |t|
    t.string "name"
    t.string "lastName"
    t.string "email"
    t.string "cellphone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "company_lead_source_id"
  end

  create_table "company_sale_representatives", force: :cascade do |t|
    t.string "name"
    t.string "lastName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "discipline_types", force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

  create_table "equipments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fitness_resource_discipline_types", force: :cascade do |t|
    t.integer "fitness_resource_id"
    t.integer "discipline_type_id"
  end

  create_table "fitness_resources", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.string "website"
    t.time "openTime"
    t.time "closeTime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "resource_type_id"
    t.string "photo"
  end

  create_table "instructors", force: :cascade do |t|
    t.string "name"
    t.string "lastName"
    t.string "cellphone"
    t.string "email"
    t.integer "speciality_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "fitness_resource_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "content"
    t.integer "instructor_id"
  end

  create_table "plan_tags", force: :cascade do |t|
    t.integer "tag_id"
    t.integer "plan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plans", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.float "price"
    t.integer "fitness_resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resource_equipments", force: :cascade do |t|
    t.integer "fitness_resource_id"
    t.integer "equipment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resource_types", force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

  create_table "specialities", force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
