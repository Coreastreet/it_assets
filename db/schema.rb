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

ActiveRecord::Schema[7.1].define(version: 2024_01_23_035132) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_users", force: :cascade do |t|
    t.string "full_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
  end

  create_table "plants", force: :cascade do |t|
    t.integer "plant_name_id"
    t.string "ipni_id"
    t.string "taxon_rank"
    t.string "taxon_status"
    t.string "family"
    t.string "species"
    t.string "infraspecific_rank"
    t.string "infraspecies"
    t.string "parenthetical_author"
    t.string "primary_author"
    t.string "publication_author"
    t.string "place_of_publication"
    t.string "volume_and_page"
    t.string "first_published"
    t.string "nomenclatural_remarks"
    t.string "geographic_area"
    t.string "lifeform_description"
    t.string "climate_description"
    t.string "taxon_name"
    t.string "taxon_authors"
    t.integer "accepted_plant_name_id"
    t.integer "basionym_plant_name_id"
    t.string "replaced_synonym_author"
    t.boolean "homotypic_synonym"
    t.integer "parent_plant_name_id"
    t.string "powo_id"
    t.boolean "reviewed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "genus_hybrid"
    t.boolean "species_hybrid"
    t.string "genus"
  end

end
