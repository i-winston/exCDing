class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.integer :enduser_id
      t.integer :admin_id
      t.string :contact_title
      t.text :contact_message

      t.timestamps
    end
  end
end
