class AddColumnToCustAddress < ActiveRecord::Migration[5.0]
  def change
    add_column :cust_addresses, :city, :string
  end
end
