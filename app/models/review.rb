class Review < ApplicationRecord
  belongs_to :restaurant

  RATES = [0, 1, 2, 3, 4, 5]
  validates :content, presence: true, null: false
  validates :rating,
            presence: true,
            null: false,
            inclusion: { in: RATES, message: "must be 0, 1, 2, 3, 4 or 5" },
            numericality: { only_integer: true }
  validates :restaurant_id, presence: true, null: false
end
