class UserAddressesController < ApplicationController
  def new
    @address = UserAddress.new
  end

  def create
    @address = UserAddress.new(user_address_params)
    @address.enduser_id = current_enduser.id
    @address.save
    redirect_to new_order_path
  end

  def destroy
    address = UserAddresses.find(params[:id])
    address.destroy
    redirect_to new_contact_path
  end

  private

  def user_address_params
    params.require(:user_address).permit(:enduser_id, :address, :postal_code, :user_name, :family_name, :first_name, :first_name_kana, :family_name_kana)
  end
end
