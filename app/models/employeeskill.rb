class Employeeskill < ActiveRecord::Base
	belongs_to :employee
  has_many :skill,:foreign_key => "skill_id"
end
