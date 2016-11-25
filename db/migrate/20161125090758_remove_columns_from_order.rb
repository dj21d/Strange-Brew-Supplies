class RemoveColumnsFromOrder < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :type, :string
    remove_column :orders, :name, :string
  end
end
