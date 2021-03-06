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

ActiveRecord::Schema.define(version: 20151001043441) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "answers", force: :cascade do |t|
    t.integer  "question_id"
    t.text     "user_answer"
    t.boolean  "is_correct"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "conjugation_answers", force: :cascade do |t|
    t.integer  "conjugation_quiz_id"
    t.string   "user_answer"
    t.string   "correct_answer"
    t.string   "tense"
    t.string   "pronoun"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "user_id"
  end

  create_table "conjugation_quizzes", force: :cascade do |t|
    t.string   "tense"
    t.integer  "number_of_questions"
    t.integer  "number_of_verbs"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "user_id"
  end

  create_table "exam_definitions", force: :cascade do |t|
    t.text     "exam_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "position"
  end

  create_table "exam_definitions_words", force: :cascade do |t|
    t.integer  "exam_definition_id"
    t.integer  "word_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "exams", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "exam_definition_id"
    t.float    "skill_level",        default: 0.0
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "noun_answers", force: :cascade do |t|
    t.integer  "noun_quiz_id"
    t.string   "user_answer"
    t.string   "correct_answer"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "noun_quizzes", force: :cascade do |t|
    t.integer  "number_of_questions"
    t.integer  "number_of_nouns"
    t.integer  "user_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "questions", force: :cascade do |t|
    t.text     "spanish"
    t.text     "english"
    t.text     "answer"
    t.text     "hint"
    t.string   "tense"
    t.integer  "word_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "admin_user_id"
    t.boolean  "checked"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "verb_diagnostic_answers", force: :cascade do |t|
    t.integer  "question_id"
    t.text     "user_answer"
    t.boolean  "is_correct"
    t.integer  "user_id"
    t.integer  "verb_diagnostic_exam_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "verb_diagnostic_exams", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "verb_learning_paths", force: :cascade do |t|
    t.integer  "difficulty"
    t.string   "tense"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "verb_tense_answers", force: :cascade do |t|
    t.integer  "question_id"
    t.text     "user_answer"
    t.boolean  "is_correct"
    t.integer  "user_id"
    t.integer  "verb_tense_exam_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "verb_tense_exams", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "tense"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "words", force: :cascade do |t|
    t.string   "spanish"
    t.string   "english"
    t.string   "part_of_speech"
    t.integer  "frequency"
    t.boolean  "commonly_oral"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
