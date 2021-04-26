class User < ApplicationRecord
  has_many :opinions, foreign_key: 'author_id'

  has_many :followings, foreign_key: 'follower_id'
  has_many :followers,  class_name: 'Following', foreign_key: 'followed_id'

  has_one_attached :avatar

  validates :username, presence: true, uniqueness: true
  validates :fullname, presence: true

  def follow_and_own_opinions
    Opinion.where(author_id: followings + [self])
  end
end
