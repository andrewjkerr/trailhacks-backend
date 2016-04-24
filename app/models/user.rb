class User < ApplicationRecord
  after_create :generate_auth_token

  has_secure_password
  has_secure_token :auth_token

  validates :email, presence: { message: "can't be blank" }

  def generate_auth_token
    self.regenerate_auth_token
  end
end
