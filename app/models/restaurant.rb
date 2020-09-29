class Restaurant < ApplicationRecord
  validates :category, in: ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy
end
