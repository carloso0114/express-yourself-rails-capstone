class Following < ApplicationRecord
  belongs_to :User

  validates :follower_id, presence: true
  validates :followed_id, presence: true
end
