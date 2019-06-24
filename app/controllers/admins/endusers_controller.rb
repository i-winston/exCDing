class Admins::EndusersController < ApplicationController
  before_action :authenticate_admin!

  def index
    @endusers = Enduser.all
  end

  def show
    @enduser = Enduser.find(params[:id])
    @history = Order.order("created_at DESC")
    @history = Order.where(enduser_id: @enduser.id )

  end

  def edit
    @enduser = Enduser.find(params[:id])
  end

  def update
    @enduser = Enduser.find(params[:id])
    if @enduser.update(enduser_params)
      redirect_to admins_endusers_path
    else
      render action: "edit"
    end
  end

  private

  def enduser_params
    params.require(:enduser).permit(:first_name, :first_name_kana, :family_name, :family_name_kana, :registration_address, :registration_postal_code, :phone_number, :email)
  end
end
