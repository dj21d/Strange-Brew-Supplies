class CustAddress < ApplicationRecord
  belongs_to :province
  belongs_to :customer
  validates :full_name,:street_address,:city,:country,:postal_code,:customer_id,:province_id, presence: true
  has_many :billing_address, class_name: 'Order', foreign_key: :billing_address_id
  has_many :shipping_address, class_name: 'Order', foreign_key: :shipping_address_id
end
