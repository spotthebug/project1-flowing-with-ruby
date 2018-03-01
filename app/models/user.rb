class User < ApplicationRecord
  validates :name, :email, presence: true
  validates :email, uniqueness: true
  validates :password, length: {minimum: 6}
  has_secure_password
  has_many :questions
  has_many :answers
end
