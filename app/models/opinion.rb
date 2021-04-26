class Opinion < ApplicationRecord
  belongs_to :User

  validates :author_id, presence: true
  validates :text, presence: true, length: { in: 1..200 }
end
