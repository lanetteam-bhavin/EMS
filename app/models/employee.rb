class Employee < ActiveRecord::Base
	belongs_to :designation
	has_many :employeeskill
  	has_many :skill
	validates :FirstName,:LastName,:email,:address,:city,:state,:designation_id,:empclass,presence: true
	mount_uploader :image, ImageUploader
end
