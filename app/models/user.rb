class User < ApplicationRecord
  has_many :project
  has_secure_password
  VALID_EMAIL_FORMAT= /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

  validates :name, :email, :password, presence: true
  validates :email, length: {maximum: 260}, format: { with: VALID_EMAIL_FORMAT}, uniqueness: {case_sensitive: false}
  validates :name, length: {maximum: 50}
  validates :password, length: {minimum: 6}
  before_save { self.email = email.downcase }
end
