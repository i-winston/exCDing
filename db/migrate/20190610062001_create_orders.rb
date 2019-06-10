class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :enduser_id
      t.string :purchase_amount
      t.string :freight
      t.float :tax
      t.string :ship_name
      t.string :ship_postal_code
      t.string :ship_address
      t.integer :payment
      t.integer :order_status

      t.timestamps
    end
  end
end
