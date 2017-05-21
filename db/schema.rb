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

ActiveRecord::Schema.define(version: 20170513191054) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bill_of_landings", force: :cascade do |t|
    t.string   "type_bl",      default: "House", null: false
    t.integer  "container_id"
    t.integer  "client_id"
    t.integer  "company_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["client_id"], name: "index_bill_of_landings_on_client_id", using: :btree
    t.index ["company_id"], name: "index_bill_of_landings_on_company_id", using: :btree
    t.index ["container_id"], name: "index_bill_of_landings_on_container_id", using: :btree
  end

  create_table "clients", force: :cascade do |t|
    t.string   "name",                          null: false
    t.string   "lastname",                      null: false
    t.string   "rif",                           null: false
    t.string   "type_client", default: "Final", null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["rif"], name: "index_clients_on_rif", unique: true, using: :btree
  end

  create_table "companies", force: :cascade do |t|
    t.string   "company_name",                     null: false
    t.string   "rif",                              null: false
    t.string   "status",       default: "OnGoing", null: false
    t.string   "type_company", default: "Naviera", null: false
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.index ["rif"], name: "index_companies_on_rif", unique: true, using: :btree
  end

  create_table "containers", force: :cascade do |t|
    t.string   "bic",                                   null: false
    t.string   "type_container", default: "Dryvan Std", null: false
    t.integer  "company_id"
    t.integer  "trip_id"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.index ["bic"], name: "index_containers_on_bic", unique: true, using: :btree
    t.index ["company_id"], name: "index_containers_on_company_id", using: :btree
    t.index ["trip_id"], name: "index_containers_on_trip_id", using: :btree
  end

  create_table "ships", force: :cascade do |t|
    t.integer  "imo",                                      null: false
    t.string   "name",                                     null: false
    t.string   "status",     default: "OnWay",             null: false
    t.string   "type_ship",  default: "Portacontenedores", null: false
    t.integer  "company_id"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.index ["company_id"], name: "index_ships_on_company_id", using: :btree
    t.index ["imo"], name: "index_ships_on_imo", unique: true, using: :btree
  end

  create_table "trips", force: :cascade do |t|
    t.string   "embarking_country",    null: false
    t.date     "embarking_date",       null: false
    t.string   "disembarking_country", null: false
    t.date     "disembarking_date",    null: false
    t.integer  "ship_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["disembarking_country", "disembarking_date"], name: "index_trips_on_disembarking_country_and_disembarking_date", using: :btree
    t.index ["embarking_country", "embarking_date"], name: "index_trips_on_embarking_country_and_embarking_date", using: :btree
    t.index ["ship_id"], name: "index_trips_on_ship_id", using: :btree
  end

  add_foreign_key "bill_of_landings", "clients"
  add_foreign_key "bill_of_landings", "companies"
  add_foreign_key "bill_of_landings", "containers"
  add_foreign_key "containers", "companies"
  add_foreign_key "containers", "trips"
  add_foreign_key "ships", "companies"
  add_foreign_key "trips", "ships"
end
