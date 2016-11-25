class AddColumnsToCustomers < ActiveRecord::Migration[5.0]
  def change
    add_column :customers, :encrypted_password, :string
  end
end
