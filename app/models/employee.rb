class Employee < ActiveRecord::Base
	belongs_to :designation
	has_many :employeeskills
  has_many :skills,through: :employeeskills
  has_many :employeerecs
	validates :FirstName,:LastName,:email,:address,:city,:state,:designation_id,:empclass,presence: true
	mount_uploader :image, ImageUploader
end
