class ProductCartsController < ApplicationController
  def index
    @carts = ProductCart.where(enduser_id: current_enduser.id)
  end

  def create
    @cart = ProductCart.new(product_cart_params)
    @cart.enduser_id = current_enduser.id
    @cart.save
    redirect_to product_carts_path
  end

  def destroy
    cart = ProductCart.find(params[:id])
    cart.destroy
    redirect_to product_carts_path
  end

  def update
    cart = ProductCart.find(params[:id])
    cart.update(product_cart_params)
    redirect_to product_carts_path
  end

  private

  def product_cart_params
    params.require(:product_cart).permit(:enduser_id, :product_id, :product_count)
  end
end
