class RemoveTeamIdFromMember < ActiveRecord::Migration
  def up
    remove_column :members, :team_id
  end

  def down
    add_column :members, :team_id, :integer
  end
end
