class User < ApplicationRecord
  has_many :opinions, foreign_key: 'author_id'

  has_one_attached :avatar
  has_one_attached :cover

  has_many :followerships, class_name: 'Following', foreign_key: :follower_id
  has_many :inverse_followerships, class_name: 'Following', foreign_key: :followed_id, dependent: :delete_all

  # Who follows you
  has_many :followed_users, through: :inverse_followerships, source: :follower

  # Who you follow
  has_many :followers, through: :followerships, source: :followed

  validates :username, presence: true, uniqueness: true
  validates :fullname, presence: true, length: { maximum: 10 }

  # trhows a list of users to follow
  def follow_suggest
    User.where.not(id: followers).where.not(id: id)
  end

  def follow_and_own_opinions
    Opinion.where(author_id: self).or(Opinion.where(author_id: followers))
  end
end
