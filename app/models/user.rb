class User < ApplicationRecord
    has_many :opinions

    #has_many :following
    has_many :followers1, class_name:'Following'
    has_many :followed1, class_name:'Following'

    validates :username, presence: true, uniqueness: true
    validates :fullname, presence: true
end
