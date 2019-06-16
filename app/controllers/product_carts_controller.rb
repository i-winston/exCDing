class ProductCartsController < ApplicationController
 
  def index
  	@carts = ProductCart.all


  end

  def create
  	@cart = ProductCart.new(product_cart_params)
  	@cart.enduser_id = current_enduser.id
    @cart.save
    redirect_to product_carts_path
  end

  def destroy
    product_cart = Product.find(params[:product_id])
    cart = current_enduser.product_carts.new(Product_id: Product.id)
    cart.destroy
    redirect_to product_carts_path
  end

  private

  def product_cart_params
    params.require(:product_cart).permit(:enduser_id, :product_id , :product_count)
  end
end
