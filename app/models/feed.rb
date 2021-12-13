class Feed < ApplicationRecord
  validates :message, presence: true
end
