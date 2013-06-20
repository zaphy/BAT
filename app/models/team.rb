class Team < ActiveRecord::Base
  attr_accessible :department_id, :deputy_trainer_id, :name, :trainer_id
  
  validates :name, :presence => true, :uniqueness => true
  
  belongs_to :department
  has_many :member
end
