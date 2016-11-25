class Customer < ApplicationRecord
  has_many :cust_addresses
  validates :full_name,presence: true

  has_secure_password
end
