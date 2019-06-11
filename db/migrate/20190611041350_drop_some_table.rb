class DropSomeTable < ActiveRecord::Migration[5.2]
  def change
  	drop_table :endusers
  	drop_table :admins
  end
end
