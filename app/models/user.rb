class User < ApplicationRecord
  has_secure_password
  has_many :articles
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 5, maximum: 20 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }
end