class AddIndexesToTeams < ActiveRecord::Migration
  def change
    add_index :teams, :trainer_id
    add_index :teams, :deputy_trainer_id
    add_index :teams, :department_id
  end
end
