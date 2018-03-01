class Question < ApplicationRecord
  validates :title, :description, presence: true
  belongs_to :user
  has_many :answers
end
