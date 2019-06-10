class CreateOrderDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :order_details do |t|
      t.integer :order_id
      t.integer :prodact_id
      t.integer :purchase_price
      t.integer :purchase_qty

      t.timestamps
    end
  end
end
