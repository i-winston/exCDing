class CreateContactAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :contact_answers do |t|
      t.integer :contact_id
      t.integer :admin_id
      t.string :answer_title
      t.text :answer_title

      t.timestamps
    end
  end
end
