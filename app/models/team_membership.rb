class TeamMembership < ActiveRecord::Base
  attr_accessible :member_id, :team_id

  belongs_to :team
  belongs_to :member

  def member_fullname
    return "" if not member
    member.fullname
  end
  def team_name
    return "" if not team
    team.name
  end
end
