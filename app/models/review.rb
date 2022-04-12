class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, numericality: { only_integer: true }, inclusion: { in: 0..5 }, presence: true
  # A review must belong to a restaurant.
  # A review must have content and a rating.
  # A review’s rating must be a number between 0 and 5.
end
