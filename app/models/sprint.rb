class Sprint < ApplicationRecord
  has_one :tracker
  has_one :user, through: :tracker

  validates :target, presence: true
  validates :hours, presence: true
  validates :minutes, presence: true
  validates :seconds, presence: true
  validates :distance, presence: true
  validates :remarks, presence: true
  validates :effort, presence: true
end
