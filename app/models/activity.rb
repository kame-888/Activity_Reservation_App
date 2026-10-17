class Activity < ApplicationRecord
  enum :genre, { outdoor: 0, craft: 1 }

  has_many :time_slots, dependent: :restrict_with_error

  validates :title, presence: true
  validates :duration_minutes, numericality: { only_integer: true, greater_than: 0 }
end