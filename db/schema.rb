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

ActiveRecord::Schema.define(version: 2020_10_31_165308) do

  create_table "cepas", force: :cascade do |t|
    t.string "nombre"
    t.float "proporcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enologo_revists", force: :cascade do |t|
    t.integer "enologo_id"
    t.integer "revist_id"
    t.string "cargo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["enologo_id"], name: "index_enologo_revists_on_enologo_id"
    t.index ["revist_id"], name: "index_enologo_revists_on_revist_id"
  end

  create_table "enologos", force: :cascade do |t|
    t.string "nombre"
    t.integer "edad"
    t.string "nacionalidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "revists", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admi"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vino_cepas", force: :cascade do |t|
    t.integer "vino_id"
    t.integer "cepa_id"
    t.boolean "disponible"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cepa_id"], name: "index_vino_cepas_on_cepa_id"
    t.index ["vino_id"], name: "index_vino_cepas_on_vino_id"
  end

  create_table "vino_enologos", force: :cascade do |t|
    t.integer "vino_id"
    t.integer "enologo_id"
    t.integer "nota"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["enologo_id"], name: "index_vino_enologos_on_enologo_id"
    t.index ["vino_id"], name: "index_vino_enologos_on_vino_id"
  end

  create_table "vinos", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "nota"
  end

end
