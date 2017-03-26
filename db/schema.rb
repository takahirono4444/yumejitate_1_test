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

ActiveRecord::Schema.define(version: 20170326094535) do

  create_table "finishes", force: :cascade do |t|
    t.string  "member_id",                            limit: 255
    t.string  "sagyosyo_id",                          limit: 255
    t.string  "syohin_id",                            limit: 255
    t.string  "first_day",                            limit: 255
    t.string  "name",                                 limit: 255
    t.string  "name_rubi",                            limit: 255
    t.string  "tel",                                  limit: 255
    t.string  "email",                                limit: 255
    t.string  "post_no",                              limit: 255
    t.string  "prefectures",                          limit: 255
    t.string  "adress1",                              limit: 255
    t.string  "adress2",                              limit: 255
    t.string  "free_space1",                          limit: 255
    t.string  "shop",                                 limit: 255
    t.string  "delivery_schedule",                    limit: 255
    t.string  "delivery_string",                      limit: 255
    t.string  "sub_shop_delivery_string",             limit: 255
    t.string  "main_shop_delivery_string",            limit: 255
    t.string  "re_product_main_shop_delivery_string", limit: 255
    t.string  "re_product_sub_shop_delivery_string",  limit: 255
    t.string  "matsuya_tsuuban",                      limit: 255
    t.string  "special_topics",                       limit: 255
    t.string  "product_place1",                       limit: 255
    t.string  "product_reason1",                      limit: 255
    t.string  "product_first_day1",                   limit: 255
    t.string  "product_delivery_schedule1",           limit: 255
    t.string  "product_delivery_day1",                limit: 255
    t.string  "product_place2",                       limit: 255
    t.string  "product_reason2",                      limit: 255
    t.string  "product_first_day2",                   limit: 255
    t.string  "product_delivery_schedule2",           limit: 255
    t.string  "product_delivery_day2",                limit: 255
    t.string  "product_place3",                       limit: 255
    t.string  "product_reason3",                      limit: 255
    t.string  "product_first_day3",                   limit: 255
    t.string  "product_delivery_schedule3",           limit: 255
    t.string  "product_delivery_day3",                limit: 255
    t.string  "product_place4",                       limit: 255
    t.string  "product_reason4",                      limit: 255
    t.string  "product_first_day4",                   limit: 255
    t.string  "product_delivery_schedule4",           limit: 255
    t.string  "product_delivery_day4",                limit: 255
    t.string  "luggage_goods",                        limit: 255
    t.string  "product_name",                         limit: 255
    t.string  "design_no",                            limit: 255
    t.string  "product_category",                     limit: 255
    t.string  "product_kind",                         limit: 255
    t.integer "shitadori",                            limit: 4,   default: 0,   null: false
    t.integer "uchikin",                              limit: 4,   default: 0,   null: false
    t.integer "price",                                limit: 4,   default: 0,   null: false
    t.string  "free_space2",                          limit: 255
    t.string  "pay_string",                           limit: 255
    t.string  "uchikin_pay_string",                   limit: 255
    t.string  "staff_id",                             limit: 255
    t.string  "customer_name",                        limit: 255
    t.string  "customer_adress",                      limit: 255
    t.string  "customer_telephone",                   limit: 255
    t.string  "customer_appearance",                  limit: 255, default: "0", null: false
    t.string  "next_expected",                        limit: 255, default: "0", null: false
    t.string  "visit_reason",                         limit: 255, default: "0", null: false
    t.string  "search_keywords",                      limit: 255
    t.string  "show_string_hp",                       limit: 255
    t.string  "browser",                              limit: 255, default: "0", null: false
    t.string  "terminal_kind",                        limit: 255, default: "0", null: false
    t.string  "hp_impression",                        limit: 255
    t.string  "sample_price",                         limit: 255, default: "0", null: false
    t.string  "sample_design",                        limit: 255, default: "0", null: false
    t.string  "reason_of_yumejitate",                 limit: 255
    t.string  "bad_impression_hp",                    limit: 255
    t.string  "want_jewelry",                         limit: 255
    t.string  "publish_true",                         limit: 255, default: "0", null: false
    t.string  "contact_true",                         limit: 255, default: "0", null: false
    t.string  "customer_email",                       limit: 255
    t.string  "sex",                                  limit: 255, default: "0", null: false
    t.string  "age",                                  limit: 255
    t.string  "product_id",                           limit: 255
    t.string  "user_id",                              limit: 255, default: "0", null: false
    t.string  "edit_staff_id",                        limit: 255, default: "0", null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "photo_file_name",    limit: 255
    t.string   "photo_content_type", limit: 255
    t.integer  "photo_file_size",    limit: 4
    t.datetime "photo_updated_at"
    t.string   "product_id",         limit: 255
    t.string   "finish_id",          limit: 255
  end

  create_table "products", force: :cascade do |t|
    t.string  "member_id",                            limit: 255
    t.string  "sagyosyo_id",                          limit: 255
    t.string  "syohin_id",                            limit: 255
    t.string  "first_day",                            limit: 255
    t.string  "name",                                 limit: 255
    t.string  "name_rubi",                            limit: 255
    t.string  "tel",                                  limit: 255
    t.string  "email",                                limit: 255
    t.string  "post_no",                              limit: 255
    t.string  "prefectures",                          limit: 255
    t.string  "adress1",                              limit: 255
    t.string  "adress2",                              limit: 255
    t.string  "free_space1",                          limit: 255
    t.string  "shop",                                 limit: 255
    t.string  "delivery_schedule",                    limit: 255
    t.string  "delivery_string",                      limit: 255
    t.string  "sub_shop_delivery_string",             limit: 255
    t.string  "main_shop_delivery_string",            limit: 255
    t.string  "re_product_main_shop_delivery_string", limit: 255
    t.string  "re_product_sub_shop_delivery_string",  limit: 255
    t.string  "matsuya_tsuuban",                      limit: 255
    t.string  "special_topics",                       limit: 255
    t.string  "product_place1",                       limit: 255
    t.string  "product_reason1",                      limit: 255
    t.string  "product_first_day1",                   limit: 255
    t.string  "product_delivery_schedule1",           limit: 255
    t.string  "product_delivery_day1",                limit: 255
    t.string  "product_place2",                       limit: 255
    t.string  "product_reason2",                      limit: 255
    t.string  "product_first_day2",                   limit: 255
    t.string  "product_delivery_schedule2",           limit: 255
    t.string  "product_delivery_day2",                limit: 255
    t.string  "product_place3",                       limit: 255
    t.string  "product_reason3",                      limit: 255
    t.string  "product_first_day3",                   limit: 255
    t.string  "product_delivery_schedule3",           limit: 255
    t.string  "product_delivery_day3",                limit: 255
    t.string  "product_place4",                       limit: 255
    t.string  "product_reason4",                      limit: 255
    t.string  "product_first_day4",                   limit: 255
    t.string  "product_delivery_schedule4",           limit: 255
    t.string  "product_delivery_day4",                limit: 255
    t.string  "luggage_goods",                        limit: 255
    t.string  "product_name",                         limit: 255
    t.string  "design_no",                            limit: 255
    t.string  "product_category",                     limit: 255
    t.string  "product_kind",                         limit: 255
    t.integer "shitadori",                            limit: 4,   default: 0,   null: false
    t.integer "uchikin",                              limit: 4,   default: 0,   null: false
    t.integer "price",                                limit: 4,   default: 0,   null: false
    t.string  "free_space2",                          limit: 255
    t.string  "pay_string",                           limit: 255
    t.string  "uchikin_pay_string",                   limit: 255
    t.string  "staff_id",                             limit: 255
    t.string  "customer_name",                        limit: 255
    t.string  "customer_adress",                      limit: 255
    t.string  "customer_telephone",                   limit: 255
    t.string  "customer_appearance",                  limit: 255, default: "0", null: false
    t.string  "next_expected",                        limit: 255, default: "0", null: false
    t.string  "visit_reason",                         limit: 255, default: "0", null: false
    t.string  "search_keywords",                      limit: 255
    t.string  "show_string_hp",                       limit: 255
    t.string  "browser",                              limit: 255, default: "0", null: false
    t.string  "terminal_kind",                        limit: 255, default: "0", null: false
    t.string  "hp_impression",                        limit: 255
    t.string  "sample_price",                         limit: 255, default: "0", null: false
    t.string  "sample_design",                        limit: 255, default: "0", null: false
    t.string  "reason_of_yumejitate",                 limit: 255
    t.string  "bad_impression_hp",                    limit: 255
    t.string  "want_jewelry",                         limit: 255
    t.string  "publish_true",                         limit: 255, default: "0", null: false
    t.string  "contact_true",                         limit: 255, default: "0", null: false
    t.string  "customer_email",                       limit: 255
    t.string  "sex",                                  limit: 255, default: "0", null: false
    t.string  "age",                                  limit: 255
    t.string  "user_id",                              limit: 255, default: "0", null: false
    t.string  "edit_staff_id",                        limit: 255, default: "0", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "nickname",               limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
