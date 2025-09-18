class Movie < ApplicationRecord
  validates :title, presence: true
  validates :score, numericality: { greater_than_or_equal_to: 0 }
  validates :description, presence: true

  # Custom JSON output with guaranteed key order
  def as_json(options = {})
    {
      id: id,
      title: title,
      score: score,
      description: description,
      created_at: created_at,
      updated_at: updated_at
    }
  end
end
