class OrdersController < ApplicationController
  def index
    @order = Order.where(enduser_id: current_enduser.id)
    @time = @order.last.created_at.strftime("%Y-%m-%d")
  end

  def new
    @carts = ProductCart.where(enduser_id: current_enduser.id)
    @order_price = view_context.get_price(@carts)
    @total = @order_price.to_s(:delimited, delimiter: ',')
    @carriage = 500.to_s(:delimited, delimiter: ',')
    @order_price = view_context.get_price_tax(@carts)
    @price = @order_price.to_s(:delimited, delimiter: ',')
    @tax = 1.08

    @user = Order.new
    @users = UserAddress.where(enduser_id: current_enduser.id)
    @address = [current_enduser.registration_address]
    @users.map { |a| a.address }.each do |a|
      @address << a
    end
    @code = [current_enduser.registration_postal_code]
    @users.map { |a| a.postal_code }.each do |a|
      @code << a
    end
    @name = [current_enduser.family_name + current_enduser.first_name]
    @users.map { |a| a.user_name }.each do |a|
      @name << a
    end
  end

  def create
    @carts = ProductCart.where(enduser_id: current_enduser.id)
    @order = Order.new(order_params)
    @order.enduser_id = current_enduser.id
    @carts.each do |cart|
      @order_details = @order.order_details.new
      @order_details.product_id = cart.product.id
      @order_details.purchase_qty = cart.product_count
      @order_details.purchase_price = cart.product.price
      @order_details.save
      cart.destroy
    end
    @order.save
    redirect_to orders_path
  end
  
  private

  def order_params
    params.require(:order).permit(:enduser_id, :product_id, :purchase_amount, :freight, :freight, :tax, :ship_name, :ship_postal_code, :ship_address, :payment, :order_status)
  end
end
