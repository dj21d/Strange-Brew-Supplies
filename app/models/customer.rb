class Customer < ApplicationRecord
  validates :full_name, :email, presence: true
end
