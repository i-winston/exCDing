class CreateProductCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :product_carts do |t|
      t.integer :enduser_id
      t.integer :product_id
      t.integer :product_count

      t.timestamps
    end
  end
end
