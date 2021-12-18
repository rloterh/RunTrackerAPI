class User < ApplicationRecord
  has_secure_password

  has_many :trackers
  has_many :sprints, through: :trackers

  validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 10 }
  validates :password, presence: true, length: { minimum: 4 }
end
