class IngredientType < ApplicationRecord
  validates :name, presence: true
end
