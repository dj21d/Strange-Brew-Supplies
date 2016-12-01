class RenameColumnInCustAddress < ActiveRecord::Migration[5.0]
  def change
    rename_column :cust_addresses, :address, :street_address
    remove_column :customers, :phone, :string
  end
end
