class Order < ApplicationRecord
  belongs_to :customer
  has_one :shipping_address, :class_name => "cust_address"
  has_one :billing_address, :class_name => "cust_address"
  belongs_to :order_status
end
