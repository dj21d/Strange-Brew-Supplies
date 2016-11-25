class AddColumnsToCustomers < ActiveRecord::Migration[5.0]
  def change
    add_column :customers, :encrypted_password, :string
    add_column :customers, :salt, :string
  end
end
