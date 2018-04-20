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

ActiveRecord::Schema.define(version: 20180410092228) do

  create_table "booking_tickets", force: :cascade do |t|
    t.boolean "status"
    t.integer "ticket_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ticket_id"], name: "index_booking_tickets_on_ticket_id"
    t.index ["user_id"], name: "index_booking_tickets_on_user_id"
  end

  create_table "cinemarooms", force: :cascade do |t|
    t.integer "num_row_seats"
    t.integer "num_of_seats"
    t.text "description"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movie_schedules", force: :cascade do |t|
    t.integer "movie_id"
    t.integer "schedule_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_movie_schedules_on_movie_id"
    t.index ["schedule_id"], name: "index_movie_schedules_on_schedule_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "name"
    t.date "produce_year"
    t.integer "broadcasing_time"
    t.text "description"
    t.string "trailer"
    t.boolean "status"
    t.integer "studio_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["studio_id"], name: "index_movies_on_studio_id"
  end

  create_table "movies_movietypes", force: :cascade do |t|
    t.integer "movie_id"
    t.integer "movietype_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_movies_movietypes_on_movie_id"
    t.index ["movietype_id"], name: "index_movies_movietypes_on_movietype_id"
  end

  create_table "movietypes", force: :cascade do |t|
    t.string "name"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.integer "show_case"
    t.date "start_time"
    t.date "end_time"
    t.date "date_movie"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules_cinemarooms", force: :cascade do |t|
    t.integer "cinemaroom_id"
    t.integer "schedule_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cinemaroom_id"], name: "index_schedules_cinemarooms_on_cinemaroom_id"
    t.index ["schedule_id"], name: "index_schedules_cinemarooms_on_schedule_id"
  end

  create_table "seats", force: :cascade do |t|
    t.boolean "seat_type"
    t.boolean "status"
    t.integer "cinemaroom_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cinemaroom_id"], name: "index_seats_on_cinemaroom_id"
  end

  create_table "studios", force: :cascade do |t|
    t.string "name"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.integer "pay_ticket"
    t.date "show_time"
    t.boolean "status"
    t.integer "seat_id"
    t.integer "movie_id"
    t.integer "cinemaroom_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cinemaroom_id"], name: "index_tickets_on_cinemaroom_id"
    t.index ["movie_id"], name: "index_tickets_on_movie_id"
    t.index ["seat_id"], name: "index_tickets_on_seat_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.string "password_digest"
    t.string "remember_digest"
    t.string "activation_digest"
    t.boolean "activated", default: false
    t.datetime "activated_at"
    t.string "reset_digest"
    t.datetime "reset_sent_at"
    t.string "address"
    t.integer "phone"
    t.string "email"
    t.boolean "status"
    t.integer "role", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
