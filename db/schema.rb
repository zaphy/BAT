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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130620132405) do

  create_table "departments", :force => true do |t|
    t.string   "name"
    t.integer  "leader_id"
    t.integer  "logistic_responsible_id"
    t.integer  "kit_manager_id"
    t.integer  "communication_responsible_id"
    t.integer  "finance_responsible_id"
    t.integer  "referee_id"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.string   "email"
    t.integer  "default_team_id"
    t.integer  "deputy_leader_id"
    t.integer  "licence_responsible_id"
    t.integer  "training_coordinator_id"
  end

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.integer  "trainer_id"
    t.integer  "deputy_trainer_id"
    t.integer  "department_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

end
