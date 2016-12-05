class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :shipping_address, :class_name => "CustAddress"
  belongs_to :billing_address, :class_name => "CustAddress"
  belongs_to :order_status
  has_many :order_items

  before_create :set_order_status
  before_save :update_subtotal
  before_save :checkout

  def subtotal
    order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
  end


  def set_order_status
    self.order_status_id = 1
  end

  def update_subtotal
    self[:subtotal] = subtotal
  end

  def checkout
    if self.order_status_id == 2
      self[:tax] = subtotal * self.billing_address.province.tax_rate
      self[:shipping] = 5
      self[:total] = self.subtotal + self.tax + self.shipping
    end
  end

end
