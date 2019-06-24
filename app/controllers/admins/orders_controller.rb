class Admins::OrdersController < ApplicationController
  before_action :authenticate_admin!
  def index
    @orders = Order.all
    @user = Order.new
  end

  def update
    order = Order.find(params[:id])
    order.update(order_params)
    redirect_to admins_endusers_path
  end

  private

  def order_params
    params.require(:order).permit(:enduser_id, :product_id, :purchase_amount, :freight, :freight, :tax, :ship_name, :ship_postal_code, :ship_address, :payment, :order_status)
  end
end
