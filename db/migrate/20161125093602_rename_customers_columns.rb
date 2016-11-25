class RenameCustomersColumns < ActiveRecord::Migration[5.0]
  def change
    rename_column :customers, :salt, :string
  end
end
