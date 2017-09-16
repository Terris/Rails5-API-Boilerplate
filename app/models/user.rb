class User < ApplicationRecord
  # encrypt password
  has_secure_password

  # Validations
  validates_presence_of :email, :password_digest
end
