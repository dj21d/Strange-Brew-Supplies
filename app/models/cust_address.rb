class CustAddress < ApplicationRecord
  belongs_to :province
  belongs_to :customer
  validates :full_name,:street_address,:city,:country,:postal_code,:customer_id,:province_id, presence: true
  canadian_postal_code = /\A[ABCEGHJKLMNPRSTVXY]{1}\\d{1}[A-Z]{1}[ -]?\\d{1}[A-Z]{1}\\d{1}\z/
  validates :postal_code, format: { with: canadian_postal_code }
  has_many :billing_address, class_name: 'Order', foreign_key: :billing_address_id
  has_many :shipping_address, class_name: 'Order', foreign_key: :shipping_address_id
end
