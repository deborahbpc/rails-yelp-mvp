class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, :rating, presence: true
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than: 6 }
  # could have done with only_integer: true e uma validation de inclusion no range 0..5
end
