class Skill < ActiveRecord::Base
  #belongs_to :employee
  #belongs_to :employeeskill
  has_many :employees
  has_many :employeeskills
end
