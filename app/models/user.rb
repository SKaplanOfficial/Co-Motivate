class User < ApplicationRecord
    has_secure_password
    has_many :challenges
    has_many :goals
    validates :username, presence: true, uniqueness: true
end