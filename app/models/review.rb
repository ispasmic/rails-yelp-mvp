class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, numericality: { only_integer: true, less_than_or_equal_to: 5, greater_than_or_equal_to: 0 }
  validates :content, :rating, presence: true
end
