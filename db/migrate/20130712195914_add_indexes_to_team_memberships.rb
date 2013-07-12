class AddIndexesToTeamMemberships < ActiveRecord::Migration
  def change
    add_index :team_memberships, :team_id
    add_index :team_memberships, :member_id
  end
end
