class Department < ActiveRecord::Base
  attr_accessible :email, :communication_responsible_id, :finance_responsible_id, :kit_manager_id, :leader_id, :logistic_responsible_id, :name, :referee_id
  attr_accessible :default_team_id

  validates :name, :presence => true, :uniqueness => true
  validates :email, :presence => true, :uniqueness => true

  has_many :teams
  has_one :default_team

  belongs_to :communication_responsible, :class_name => :Member
  belongs_to :finance_responsible, :class_name => :Member
  belongs_to :kit_manager, :class_name => :Member
  belongs_to :leader, :class_name => :Member
  belongs_to :logistic_responsible, :class_name => :Member
  belongs_to :referee, :class_name => :Member

  def communication_responsible_name
    return "" if not communication_responsible
    communication_responsible.fullname
  end

  def finance_responsible_name
    return "" if not finance_responsible
    finance_responsible.fullname
  end

  def kit_manager_name
    return "" if not kit_manager
    kit_manager.fullname
  end

  def leader_name
    return "" if not leader
    leader.fullname
  end

  def logistic_responsible_name
    return "" if not logistic_responsible
    logistic_responsible.fullname
  end

  def referee_name
    return "" if not referee
    referee.fullname
  end
end

