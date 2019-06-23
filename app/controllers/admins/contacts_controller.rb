class Admins::ContactsController < ApplicationController
  def index
    @contact = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
    @contact_answers = ContactAnswer.new
  end

  def create
    @contact_answers = ContactAnswer.new(contact_answers_params)
    @contact_answers.contact_id = current_admin.id
    @contact_answers.admin_id = current_admin.id
    @contact_answers.save
    ContactMailer.thanks_email(@contact_answers, params[:contact_id]).deliver
    redirect_to admins_homes_path
  end

  private

  def contact_answers_params
    params.require(:contact_answer).permit(:answer_title, :answer_message)
  end
end
