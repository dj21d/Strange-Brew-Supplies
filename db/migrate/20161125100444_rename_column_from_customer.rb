class RenameColumnFromCustomer < ActiveRecord::Migration[5.0]
  def change
    remove_column :customers, :string, :string
    rename_column :customers, :encrypted_password, :password_digest
  end
end
