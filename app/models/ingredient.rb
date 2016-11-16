class Ingredient < ApplicationRecord
  belongs_to :measurement
  belongs_to :ingredient_type
  validates :name, :price, presence: true
end
