class CustAddress < ApplicationRecord
  belongs_to :province
  belongs_to :customer
  validates :name,:address,:country,:postal_code,:customer,:province, presence: true
  has_many :billing_address, class_name: 'Order', foreign_key: :billing_address_id
  has_many :shipping_address, class_name: 'Order', foreign_key: :shipping_address_id
end
