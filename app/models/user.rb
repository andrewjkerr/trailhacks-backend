class User < ApplicationRecord
  has_secure_password

  validates :email, presence: { message: 'Email cannot be blank!' }
end
