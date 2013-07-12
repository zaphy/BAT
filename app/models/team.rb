class Team < ActiveRecord::Base
  attr_accessible :department_id, :deputy_trainer_id, :name, :trainer_id
  attr_accessible :background_color

  validates :name, :presence => true, :uniqueness => true
  validates :email, :presence => true, :uniqueness => true

  belongs_to :department

  has_many :team_memberships, :dependent => :destroy
  has_many :members, :through => :team_memberships

  belongs_to :trainer, :class_name => :Member
  belongs_to :deputy_trainer, :class_name => :Member

  def trainer_name
    return "" if not trainer
    trainer.fullname
  end
  def deputy_trainer_name
    return "" if not deputy_trainer
    deputy_trainer.fullname
  end
  def department_name
    return "" if not department
    department.name
  end
end
