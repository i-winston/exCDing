class EndusersController < ApplicationController
  def edit
    @enduser = Enduser.find(params[:id])
    @enduser_id = current_enduser.id
    redirect_to enduser_path(@current_enduser.id) if @enduser.id != current_enduser.id
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
    if @enduser.update(enduser_params)
      redirect_to enduser_path(@enduser.id)
    else
      render action: "edit"
    end
  end

  private

  def user_params
    params.require(:enduser).permit(:name)
  end
end
