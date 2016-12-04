class Customer < ApplicationRecord
  has_many :cust_addresses
  validates :full_name,:email,:password_digest,presence: true
  validates :email, uniqueness: true
  has_secure_password
end
