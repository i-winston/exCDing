class AddFirstNameToEndusers < ActiveRecord::Migration[5.2]
  def change
    add_column :endusers, :first_name, :string
    add_column :endusers, :family_name, :string
    add_column :endusers, :first_name_kana, :string
    add_column :endusers, :family_name_kana, :string
    add_column :endusers, :phone_number, :string
    add_column :endusers, :is_deleted, :boolean
    add_column :endusers, :deleted_ad, :datatime
  end
end
