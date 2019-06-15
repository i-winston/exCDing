class EndusersController < ApplicationController
  def edit
    @enduser = Enduser.find(params[:id])
  end

  def show
  end

  def index
  end

  def new
    @enduser = Enduser.new
  end

  def update
    @enduser = Enduser.find(params[:id])
    if
      @enduser.update(enduser_params)
      redirect_to enduser_path(@enduser.id)
    else
      render action: "edit"
    end
  end


  def destroy
    enduser = Enduser.find(params[:id])
    enduser.destroy
    redirect_to admins_endusers_path
  end


  private

  def enduser_params
    params.require(:enduser).permit(:first_name, :first_name_kana, :family_name, :family_name_kana, :registration_address, :registration_postal_code, :phone_number, :email)
  end
end
