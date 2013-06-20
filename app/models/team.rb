class Team < ActiveRecord::Base
  attr_accessible :department_id, :deputy_trainer_id, :name, :trainer_id
end
