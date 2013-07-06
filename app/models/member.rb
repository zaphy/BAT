class Member < ActiveRecord::Base
  attr_accessible :address_house_number, :address_street, :birthday, :city, :first_name, :last_name, :postal_code
  attr_accessible :membership_started_on, :membership_finished_on
  attr_accessible :enabled, :official
  
  validates :last_name, :presence => true
  validates :first_name, :presence => true
  
  has_many :team_memberships
  has_many :teams, :through => :team_memberships
  
  scope :enabled, where(:enabled => true).order(:last_name)
  scope :disabled, where(:enabled => false).order(:last_name)
  
  scope :officials, where(:official => true).order(:last_name)
  
  def fullname
    [first_name, last_name].join(" ")
  end
  def age
    now = Date.today
    now.year - birthday.year - ((now.month > birthday.month || (now.month == birthday.month && now.day >= birthday.day)) ? 0 : 1)
  end
end
