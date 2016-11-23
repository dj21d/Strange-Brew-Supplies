class AddSizeColumnToIngredients < ActiveRecord::Migration[5.0]
  def change
    add_column :ingredients, :package_size, :decimal
  end
end
