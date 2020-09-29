class Restaurant < ApplicationRecord
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
  validates :name, :address, :category, presence: true
  has_many :reviews, dependent: :destroy
end
