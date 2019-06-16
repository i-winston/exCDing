class Admins::EndusersController < ApplicationController
  def index
    @endusers = Enduser.all
  end

  def show
  end

  def edit
  end
end
