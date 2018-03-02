class Question < ApplicationRecord

  validates :title, :description, presence: true
  belongs_to :user
  has_many :answers
  has_many :votes, as: :voteable

end
