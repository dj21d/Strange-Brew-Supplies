class AddMoreColumnsToOrderItem < ActiveRecord::Migration[5.0]
  def change
    add_column :order_items, :unit_price, :decimal
    add_column :order_items, :total_price, :decimal
  end
end
