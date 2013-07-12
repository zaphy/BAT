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

ActiveRecord::Schema.define(:version => 20130712195919) do

  create_table "departments", :force => true do |t|
    t.string   "name",                         :null => false
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

  add_index "departments", ["communication_responsible_id"], :name => "index_departments_on_communication_responsible_id"
  add_index "departments", ["default_team_id"], :name => "index_departments_on_default_team_id"
  add_index "departments", ["finance_responsible_id"], :name => "index_departments_on_finance_responsible_id"
  add_index "departments", ["kit_manager_id"], :name => "index_departments_on_kit_manager_id"
  add_index "departments", ["leader_id"], :name => "index_departments_on_leader_id"
  add_index "departments", ["logistic_responsible_id"], :name => "index_departments_on_logistic_responsible_id"
  add_index "departments", ["referee_id"], :name => "index_departments_on_referee_id"

  create_table "members", :force => true do |t|
    t.string   "last_name",                                    :null => false
    t.string   "first_name",                                   :null => false
    t.string   "address_street",                               :null => false
    t.string   "address_house_number",                         :null => false
    t.string   "postal_code",                                  :null => false
    t.string   "city",                                         :null => false
    t.date     "birthday"
    t.date     "membership_started_on"
    t.date     "membership_finished_on"
    t.boolean  "enabled",                   :default => false
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
    t.boolean  "trainer",                   :default => false
    t.boolean  "leader",                    :default => false
    t.boolean  "logistic_responsible",      :default => false
    t.boolean  "kit_manager",               :default => false
    t.boolean  "communication_responsible", :default => false
    t.boolean  "finance_responsible",       :default => false
    t.boolean  "referee",                   :default => false
  end

  create_table "team_memberships", :force => true do |t|
    t.integer  "team_id"
    t.integer  "member_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "team_memberships", ["member_id"], :name => "index_team_memberships_on_member_id"
  add_index "team_memberships", ["team_id"], :name => "index_team_memberships_on_team_id"

  create_table "teams", :force => true do |t|
    t.string   "name",              :null => false
    t.integer  "trainer_id"
    t.integer  "deputy_trainer_id"
    t.integer  "department_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "email"
    t.string   "background_color"
  end

  add_index "teams", ["department_id"], :name => "index_teams_on_department_id"
  add_index "teams", ["deputy_trainer_id"], :name => "index_teams_on_deputy_trainer_id"
  add_index "teams", ["trainer_id"], :name => "index_teams_on_trainer_id"

end
