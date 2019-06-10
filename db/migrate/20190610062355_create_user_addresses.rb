class CreateUserAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :user_addresses do |t|
      t.integer :enduser_id
      t.string :address
      t.string :postal_code
      t.string :first_name
      t.string :family_name
      t.string :first_name_kana
      t.string :family_mame_kana

      t.timestamps
    end
  end
end
