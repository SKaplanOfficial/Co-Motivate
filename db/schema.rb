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

ActiveRecord::Schema.define(version: 2021_10_10_082405) do

  create_table "challenges", force: :cascade do |t|
    t.text "body"
    t.integer "category_seed"
    t.integer "topic_seed"
    t.integer "type_seed"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_challenges_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "user_id", null: false
    t.text "body"
    t.integer "comment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["comment_id"], name: "index_comments_on_comment_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "custom_goal_names", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_custom_goal_names_on_user_id"
  end

  create_table "games", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "goals", force: :cascade do |t|
    t.text "body"
    t.integer "category_seed"
    t.integer "topic_seed"
    t.integer "type_seed"
    t.integer "user_id", null: false
    t.integer "custom_goal_name_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["custom_goal_name_id"], name: "index_goals_on_custom_goal_name_id"
    t.index ["user_id"], name: "index_goals_on_user_id"
  end

  create_table "matches", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "policies", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "icon"
    t.string "message_color"
    t.boolean "pref_short_challenges"
    t.boolean "pref_long_challenges"
    t.boolean "pref_topic_challenges"
    t.boolean "pref_category_challenges"
    t.integer "pref_seed"
  end

  add_foreign_key "challenges", "users"
  add_foreign_key "comments", "comments"
  add_foreign_key "comments", "users"
  add_foreign_key "custom_goal_names", "users"
  add_foreign_key "goals", "custom_goal_names"
  add_foreign_key "goals", "users"
end
