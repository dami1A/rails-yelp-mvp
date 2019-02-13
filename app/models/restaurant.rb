class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORIES = %w(chinese italian japanese french belgian)
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :phone_number, presence: false
  validates :category,
            presence: true,
            inclusion: { in: CATEGORIES, message: "must be chinese, italian, japanese, french or belgian" }
end
