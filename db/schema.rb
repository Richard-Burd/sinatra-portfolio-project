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

ActiveRecord::Schema.define(version: 20180128042726) do

  create_table "author_locations", force: :cascade do |t|
    t.integer "author_id"
    t.integer "location_id"
  end

  create_table "author_periods", force: :cascade do |t|
    t.integer "author_id"
    t.integer "period_id"
  end

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.string "subjects"
    t.integer "birth_date"
    t.integer "death_date"
    t.integer "user_id"
  end

  create_table "book_genres", force: :cascade do |t|
    t.integer "book_id"
    t.integer "genre_id"
  end

  create_table "book_languages", force: :cascade do |t|
    t.integer "book_id"
    t.integer "language_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "year_published"
    t.string "title"
    t.string "topics"
    t.integer "user_id"
    t.integer "author_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
  end

  create_table "locations", force: :cascade do |t|
    t.string "city"
    t.string "region"
    t.string "polity"
    t.string "today_part_of"
  end

  create_table "periods", force: :cascade do |t|
    t.string "name"
    t.integer "start_date"
    t.integer "end_date"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
  end

end
