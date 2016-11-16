class Ingredient < ApplicationRecord
  belongs_to :measurement
  validates :name, :price, :measurement, presence: true
end
