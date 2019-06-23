class AddAnswerMessageToContactAnswers < ActiveRecord::Migration[5.2]
  def change
    add_column :contact_answers, :answer_message, :text
  end
end
