class CreateCustAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :cust_addresses do |t|
      t.string :name
      t.string :type
      t.string :address
      t.references :province, foreign_key: true
      t.string :country
      t.string :postal_code
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
