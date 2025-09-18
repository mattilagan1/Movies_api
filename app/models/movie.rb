class Movie < ApplicationRecord
  validates :title, presence: true
  validates :score, numericality: { greater_than_or_equal_to: 0 }
  validates :description, presence: true
end
