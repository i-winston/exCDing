class RemoveFirstNameFromUserAddresses < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_addresses, :first_name, :string
  end
end
