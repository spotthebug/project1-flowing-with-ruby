class Vote < ApplicationRecord
  validates_uniqueness_of :voteable_id, scope: :user_id
  belongs_to :voteable, polymorphic: true
  belongs_to :user
end
