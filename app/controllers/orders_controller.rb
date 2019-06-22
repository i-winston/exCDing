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
  	@address = [current_enduser.registration_address]
    @users.map{|a| a.address}.each do |a|
    @address << a
	end
  	@code = [current_enduser.registration_postal_code]
    @users.map{|a| a.postal_code}.each do |a|
    @code << a
	end
    @name = [current_enduser.family_name]
    @users.map{|a| a.user_name}.each do |a|
    @name << a
	end
  end


  private
  def method_name
  	
  end
end
