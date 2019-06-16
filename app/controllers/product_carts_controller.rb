class ProductCartsController < ApplicationController
  def create
    @product_cart = Product.new
    @product_cart = current_enduser.id
    @product_cart.save
    redirect_to product_carts_path
  end

  def destroy
    product_cart = Product.find(params[:product_id])
    cart = current_enduser.product_carts.new(Product_id: Product.id)
    crat.destroy
    redirect_to product_carts_path
  end
end
