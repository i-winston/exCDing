class AddDiskNameToDisks < ActiveRecord::Migration[5.2]
  def change
    add_column :disks, :disk_name, :string
  end
end
