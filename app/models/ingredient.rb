class Ingredient < ApplicationRecord
  belongs_to :measurement
  belongs_to :ingredient_type
  validates :name, :price, presence: true
  validates :sale_price, presence: true, if: :on_sale?
  validates_numericality_of :sale_price, :less_than_or_equal_to => :price, if: :on_sale?
end
