class RemoveFamilyNameFromUserAddresses < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_addresses, :family_name, :string
  end
end
