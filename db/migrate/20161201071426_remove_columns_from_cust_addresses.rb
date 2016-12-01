class RemoveColumnsFromCustAddresses < ActiveRecord::Migration[5.0]
  def change
    remove_column :cust_addresses, :type, :string
    remove_column :cust_addresses, :name, :string
    add_column :cust_addresses, :full_name, :string
    add_column :cust_addresses, :phone_number, :string
  end
end
