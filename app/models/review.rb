class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating in: (0..5)
end
