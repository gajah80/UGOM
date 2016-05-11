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

ActiveRecord::Schema.define(version: 20160511033516) do

  create_table "admins", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.integer  "branch_id"
    t.integer  "role_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "bangsas", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "branches", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dms", force: :cascade do |t|
    t.integer  "kod_dm"
    t.string   "nama_dm"
    t.integer  "dun_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "duns", force: :cascade do |t|
    t.integer  "kod_dun"
    t.string   "nama_dun"
    t.integer  "par_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locs", force: :cascade do |t|
    t.integer  "kod_loc"
    t.string   "nama_loc"
    t.integer  "dm_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "overalls", force: :cascade do |t|
    t.integer  "kod_par"
    t.string   "nama_par"
    t.integer  "kod_dun"
    t.string   "nama_dun"
    t.integer  "kod_dm"
    t.string   "nama_dm"
    t.string   "kod_lokaliti"
    t.string   "nama_lokaliti"
    t.integer  "no_siri"
    t.string   "ic_baru"
    t.string   "ic_lama"
    t.string   "nama"
    t.string   "jantina"
    t.string   "bangsa"
    t.integer  "saluran"
    t.string   "tempat_mengundi"
    t.boolean  "status_baru"
    t.string   "pru13_negeri"
    t.integer  "pru13_kod_parlimen"
    t.integer  "pru13_kod_lokaliti"
    t.date     "dob"
    t.string   "umno_alamat1"
    t.string   "umno_alamat2"
    t.string   "umno_alamat3"
    t.integer  "umno_poskod"
    t.string   "umno_daerah"
    t.string   "umno_negeri"
    t.string   "jpn_alamat1"
    t.string   "jpn_alamat2"
    t.string   "jpn_alamat3"
    t.integer  "jpn_poskod"
    t.string   "jpn_daerah"
    t.string   "jpn_negeri"
    t.integer  "phone1"
    t.integer  "phone2"
    t.boolean  "umno_status"
    t.integer  "umno_kod_negeri"
    t.integer  "umno_kod_bahagian"
    t.integer  "umno_kod_cawangan"
    t.string   "umno_nama_cawangan"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "dun_id"
  end

  create_table "pars", force: :cascade do |t|
    t.integer  "kod_par"
    t.string   "nama_par"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phones", force: :cascade do |t|
    t.string   "no_tel"
    t.boolean  "validation"
    t.integer  "voter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "voters", force: :cascade do |t|
    t.string   "name"
    t.string   "new_ic"
    t.string   "old_ic"
    t.integer  "no_siri"
    t.string   "jantina"
    t.integer  "bangsa_id"
    t.date     "dob"
    t.string   "saluran"
    t.string   "tempat_mengundi"
    t.boolean  "status_baru"
    t.string   "pru13_negeri"
    t.integer  "pru13_kod_parlimen"
    t.string   "pru13_parlimen"
    t.integer  "pru13_kod_lokaliti"
    t.string   "umno_alamat1"
    t.string   "umno_alamat2"
    t.string   "umno_alamat3"
    t.integer  "umno_poskod"
    t.string   "umno_daerah"
    t.string   "umno_negeri"
    t.string   "jpn_alamat1"
    t.string   "jpn_alamat2"
    t.string   "jpn_alamat3"
    t.integer  "jpn_poskod"
    t.string   "jpn_daerah"
    t.string   "jpn_negeri"
    t.boolean  "umno_status"
    t.integer  "umno_kod_negeri"
    t.integer  "umno_kod_bahagian"
    t.integer  "umno_kod_cawangan"
    t.string   "umno_nama_cawangan"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end
