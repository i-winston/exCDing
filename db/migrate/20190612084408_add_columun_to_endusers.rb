class AddColumunToEndusers < ActiveRecord::Migration[5.2]
  def change
    add_column :endusers, :registration_address, :string
    add_column :endusers, :registration_postal_code, :string
  end
end
