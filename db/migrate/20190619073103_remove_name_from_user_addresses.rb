class RemoveNameFromUserAddresses < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_addresses, :name, :string
  end
end
