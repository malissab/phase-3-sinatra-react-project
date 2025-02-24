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

ActiveRecord::Schema.define(version: 2021_12_09_224157) do

  create_table "reviews", force: :cascade do |t|
    t.string "comment"
    t.string "rating"
    t.integer "sneaker_id"
    t.integer "user_id"
    t.index ["sneaker_id"], name: "index_reviews_on_sneaker_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "sneakers", force: :cascade do |t|
    t.string "name"
    t.string "brand"
    t.integer "release_date"
    t.integer "resell_value"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
  end

end
