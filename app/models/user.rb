class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  validates_format_of :email, with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  validates :password_digest, presence: true
  has_secure_password
end
