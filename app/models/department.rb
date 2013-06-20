class Department < ActiveRecord::Base
  attr_accessible :communication_responsible_id, :finance_responsible_id, :kit_manager_id, :leader_id, :logistic_responsible_id, :name, :referee_id
end
