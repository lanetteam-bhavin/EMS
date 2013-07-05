class Employeeskill < ActiveRecord::Base
	belongs_to :employee
  belongs_to :skill
  #has_many :skill,:foreign_key => "skill_id"
end
