class Member < ActiveRecord::Base
  attr_accessible :address_house_number, :address_street, :birthday, :city, :first_name, :last_name, :postal_code, :team_id
  
  validates :last_name, :presence => true
  validates :first_name, :presence => true
  
  belongs_to :team
end
