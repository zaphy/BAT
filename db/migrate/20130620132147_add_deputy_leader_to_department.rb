class AddDeputyLeaderToDepartment < ActiveRecord::Migration
  def change
    add_column :departments, :deputy_leader_id, :integer
  end
end
