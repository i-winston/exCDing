class AddNameToUserAddresses < ActiveRecord::Migration[5.2]
  def change
    add_column :user_addresses, :name, :string
  end
end
