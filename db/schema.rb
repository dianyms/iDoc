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

ActiveRecord::Schema.define(version: 20170401181929) do

  create_table "actor_use_cases", force: :cascade do |t|
    t.integer  "actor_id"
    t.integer  "use_case_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["actor_id"], name: "index_actor_use_cases_on_actor_id"
    t.index ["use_case_id"], name: "index_actor_use_cases_on_use_case_id"
  end

  create_table "actors", force: :cascade do |t|
    t.string   "name"
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_actors_on_project_id"
  end

  create_table "glossaries", force: :cascade do |t|
    t.string   "term"
    t.text     "description"
    t.string   "synonymous"
    t.integer  "project_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["project_id"], name: "index_glossaries_on_project_id"
  end

  create_table "project_users", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_project_users_on_project_id"
    t.index ["user_id"], name: "index_project_users_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "delivery_date"
    t.datetime "creation_date"
    t.string   "category"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "requirements", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "requirement_type"
    t.integer  "project_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["project_id"], name: "index_requirements_on_project_id"
  end

  create_table "scenarios", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "type"
    t.integer  "use_case_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["use_case_id"], name: "index_scenarios_on_use_case_id"
  end

  create_table "step_scenarios", force: :cascade do |t|
    t.string   "sequence"
    t.text     "description"
    t.integer  "scenario_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["scenario_id"], name: "index_step_scenarios_on_scenario_id"
  end

  create_table "use_case_requirements", force: :cascade do |t|
    t.integer  "use_case_id"
    t.integer  "requirement_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["requirement_id"], name: "index_use_case_requirements_on_requirement_id"
    t.index ["use_case_id"], name: "index_use_case_requirements_on_use_case_id"
  end

  create_table "use_cases", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "project_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["project_id"], name: "index_use_cases_on_project_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
