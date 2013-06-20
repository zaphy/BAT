class AddEmailAndDefaultTeamToDepartment < ActiveRecord::Migration
  def change
    add_column :departments, :email, :string
    add_column :departments, :default_team_id, :integer
  end
end
