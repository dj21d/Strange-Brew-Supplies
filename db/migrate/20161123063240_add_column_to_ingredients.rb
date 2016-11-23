class AddColumnToIngredients < ActiveRecord::Migration[5.0]
  def change
    add_column :ingredients, :on_sale, :boolean
    add_column :ingredients, :sale_price, :float
  end
end
