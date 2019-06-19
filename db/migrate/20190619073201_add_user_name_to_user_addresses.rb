class AddUserNameToUserAddresses < ActiveRecord::Migration[5.2]
  def change
    add_column :user_addresses, :user_name, :string
  end
end
