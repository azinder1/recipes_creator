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

ActiveRecord::Schema.define(version: 20161214211605) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
  end

  create_table "ingredients_steps", force: :cascade do |t|
    t.integer "quantity"
    t.string  "measurement_type"
    t.integer "ingredient_id"
    t.integer "step_id"
  end

  create_table "recipe_tags", force: :cascade do |t|
    t.integer "recipe_id"
    t.integer "tag_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string  "title"
    t.integer "cook_time"
    t.integer "serving_size"
  end

  create_table "steps", force: :cascade do |t|
    t.integer "recipe_id"
    t.string  "description"
  end

  create_table "tags", force: :cascade do |t|
    t.string "type"
  end

end
