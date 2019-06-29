class RemoveProdactIdFromOrderDetails < ActiveRecord::Migration[5.2]
  def change
    remove_column :order_details, :prodact_id, :integer
  end
end
