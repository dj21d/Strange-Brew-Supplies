class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :ingredient

  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validate :ingredient_present
  validate :order_present

  before_save :finalize

  def unit_price
    if persisted?
      self[:unit_price]
    else
      if ingredient.on_sale
        ingredient.sale_price
      else
        ingredient.price
      end
    end
  end

  def total_price
    unit_price * quantity
  end

  private
  def ingredient_present
    if ingredient.nil?
      errors.add(:ingredient, "is not valid or is not active.")
    end
  end

  def order_present
    if order.nil?
      errors.add(:order, "is not a valid order.")
    end
  end

  def finalize
    self[:unit_price] = unit_price
    self[:total_price] = quantity * self[:unit_price]
  end
end
