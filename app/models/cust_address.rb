class CustAddress < ApplicationRecord
  belongs_to :province
  belongs_to :customer
  validates :name,:address,:country,:postal_code,:customer,:province,:type, presence: true
end
