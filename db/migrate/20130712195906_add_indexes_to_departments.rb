class AddIndexesToDepartments < ActiveRecord::Migration
  def change
    add_index :departments, :leader_id
    add_index :departments, :logistic_responsible_id
    add_index :departments, :kit_manager_id
    add_index :departments, :communication_responsible_id
    add_index :departments, :finance_responsible_id
    add_index :departments, :referee_id
    add_index :departments, :default_team_id
  end
end
