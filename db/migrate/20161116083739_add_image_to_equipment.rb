class AddImageToEquipment < ActiveRecord::Migration[5.0]
  def change
    add_column :equipment, :image, :string
  end
end
