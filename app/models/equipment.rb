class Equipment < ApplicationRecord
  validates :name, :price, presence: true
end
