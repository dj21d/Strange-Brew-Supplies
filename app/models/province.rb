class Province < ApplicationRecord
  validates :name, :tax_rate, presence:true
end
