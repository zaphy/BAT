class Department < ActiveRecord::Base
  attr_accessible :communication_responsible_id, :finance_responsible_id, :kit_manager_id, :leader_id, :logistic_responsible_id, :name, :referee_id
  
  validates :name, :presence => true, :uniqueness => true
  validates :email, :presence => true, :uniqueness => true
  
  has_many :teams
  has_one :default_team
end

