class CreateLebels < ActiveRecord::Migration[5.2]
  def change
    create_table :lebels do |t|
      t.string :label_name

      t.timestamps
    end
  end
end
