class ContactsController < ApplicationController
  def new
  	@contact = Contact.new
  end

  def create
  	@contact = Contact.new(params[:contact_id])
    @contact.save
    ContactMailer.received_email(@contact).deliver
  	render :action => 'create'

  end

  private

  def contact_params
    params.require(:contact).permit(:contact_message, :name,)
  end

end
