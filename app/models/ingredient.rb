class Ingredient < ApplicationRecord
  belongs_to :measurement
  belongs_to :ingredient_type
  validates :name, :price, :measurement, presence: true
end
