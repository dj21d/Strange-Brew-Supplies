class AddColumnToOrderItem < ActiveRecord::Migration[5.0]
  def change
    add_column :order_items, :quantity, :integer
  end
end
