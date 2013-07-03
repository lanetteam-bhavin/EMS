class Designation < ActiveRecord::Base
	belongs_to :employee
	validates :desig_name,presence: true
end
