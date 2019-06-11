class EndusersController < ApplicationController
  def edit
  	@enduser = current_user
  end

  def show
  	@enduser = User.find(params[:id])
  end

  def index
  end

  def new
  end
end
