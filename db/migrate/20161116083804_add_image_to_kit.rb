class AddImageToKit < ActiveRecord::Migration[5.0]
  def change
    add_column :kits, :image, :string
  end
end
