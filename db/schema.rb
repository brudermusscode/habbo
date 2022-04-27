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

ActiveRecord::Schema[7.0].define(version: 2022_04_27_182850) do
  create_table "yuuzaas", charset: "utf8mb3", force: :cascade do |t|
    t.string "username", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.integer "credits", default: 100, null: false
    t.integer "vip_points", default: 100, null: false
    t.integer "activity_points", default: 0, null: false
    t.datetime "activity_points_lastupdate"
    t.string "look", default: "ca-1804-100.ch-3215-110.sh-3016-99.lg-275-110.hr-110-1316.fa-1204-62.ea-3108-99-108.hd-180-3.wa-3073-62", null: false
    t.string "gender", default: "", null: false
    t.string "motto", default: "I love it!"
    t.boolean "online", default: false, null: false
    t.integer "home_room", default: 0, null: false
    t.integer "respect", default: 0, null: false
    t.integer "daily_respect_points", default: 3, null: false
    t.integer "daily_pet_respect_points", default: 3, null: false
    t.boolean "newbie_status", default: true, null: false
    t.boolean "is_muted", default: false, null: false
    t.boolean "mutant_penalty", default: false, null: false
    t.datetime "mutant_penalty_expire"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_yuuzaas_on_confirmation_token", unique: true
    t.index ["email"], name: "index_yuuzaas_on_email", unique: true
    t.index ["reset_password_token"], name: "index_yuuzaas_on_reset_password_token", unique: true
    t.index ["username"], name: "index_yuuzaas_on_username", unique: true
  end

end
