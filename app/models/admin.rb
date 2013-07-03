class Admin < ActiveRecord::Base

  validates :AdminName,:AdminEmail,:password,presence: true
  before_save :create_remember_token
  has_secure_password
  private 
  def create_remember_token
    self.token = SecureRandom.urlsafe_base64
  end
end
