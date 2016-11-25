class Customer < ApplicationRecord
  has_many :cust_addresses
  validates :full_name, :email, presence: true
end
