class Admins::ContactsController < ApplicationController
  def index
    @contact = Contact.all
  end

  def show
  	@contact = Contact.find(params[:id])
  end

  private

  def contact_params
    params.require(:contact).permit(:contact_message, :name, :contact_title)
  end
end
