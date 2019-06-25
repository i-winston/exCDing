class AddContactStatusToContactAnswers < ActiveRecord::Migration[5.2]
  def change
    add_column :contact_answers, :contact_status, :integer
  end
end
