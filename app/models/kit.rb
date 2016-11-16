class Kit < ApplicationRecord
  validates :name, :price, presence: true
end
