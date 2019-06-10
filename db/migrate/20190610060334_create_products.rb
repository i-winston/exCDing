class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :label_id
      t.string :product_name
      t.string :jacket_id
      t.integer :product_stock
      t.string :product_status
      t.integer :price

      t.timestamps
    end
  end
end
