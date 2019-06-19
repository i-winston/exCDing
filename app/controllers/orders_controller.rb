class OrdersController < ApplicationController
  def index
  end

  def new
    @carts = ProductCart.where(enduser_id: current_enduser.id)
    @order_price = view_context.get_price(@carts)
    @total = @order_price.to_s(:delimited, delimiter: ',')
    @carriage = 500.to_s(:delimited, delimiter: ',')
    @order_price = view_context.get_price_tax(@carts)
    @price = @order_price.to_s(:delimited, delimiter: ',')
    @user = Order.new
    @users = UserAddress.where(enduser_id: current_enduser.id)
  end

  private

  def method_name
  end
end
