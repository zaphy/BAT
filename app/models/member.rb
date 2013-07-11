class Member < ActiveRecord::Base
  attr_accessible :address_house_number, :address_street, :birthday, :city, :first_name, :last_name, :postal_code
  attr_accessible :membership_started_on, :membership_finished_on
  attr_accessible :enabled, :official
  attr_accessible :trainer, :leader, :logistic_responsible, :kit_manager, :communication_responsible, :finance_responsible, :referee
  
  validates :last_name, :presence => true
  validates :first_name, :presence => true
  
  has_many :team_memberships
  has_many :teams, :through => :team_memberships
  
  scope :enabled, where(:enabled => true).order(:last_name)
  scope :disabled, where(:enabled => false).order(:last_name)
  
  scope :trainers, where(:trainer => true).order(:last_name)
  scope :deputy_trainers, where(:trainer => true).order(:last_name)
  scope :leaders, where(:leader => true).order(:last_name)
  scope :logistic_responsibles, where(:logistic_responsible => true).order(:last_name)
  scope :kit_managers, where(:kit_manager => true).order(:last_name)
  scope :communication_responsibles, where(:communication_responsible => true).order(:last_name)
  scope :finance_responsibles, where(:finance_responsible => true).order(:last_name)
  scope :referees, where(:referee => true).order(:last_name)
  
  OFFICIAL_FUNCTIONS = [:trainer, :leader, :logistic_responsible, :kit_manager, :communication_responsible, :finance_responsible, :referee]
  
  def self.officials
    all.select {|x| x.official?}
  end
  
  def fullname
    [first_name, last_name].join(" ")
  end
  
  def age
    now = Date.today
    now.year - birthday.year - ((now.month > birthday.month || (now.month == birthday.month && now.day >= birthday.day)) ? 0 : 1)
  end
  
  def official_functions
    OFFICIAL_FUNCTIONS.select {|official_function| self.send(official_function) == true}
  end
  
  def official?
    return !official_functions.empty?
  end
end
