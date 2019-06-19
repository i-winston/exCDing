class RemoveFirstMameKanaFromUserAddresses < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_addresses, :family_mame_kana, :string
  end
end
