class Member < ActiveRecord::Base
  attr_accessible :address_house_number, :address_street, :birthday, :city, :enabled, :first_name, :last_name, :membership_finished_on, :membership_started_on, :postal_code, :team_id
end
