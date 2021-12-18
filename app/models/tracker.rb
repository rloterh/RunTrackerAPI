class Tracker < ApplicationRecord
  belongs_to :user
  belongs_to :sprint

  validates :user, presence: true
  validates :sprint, presence: true
end
