class ProductCartsController < ApplicationController
  def create
  end

  def destroy
    product_cart = Porduct.find(params[:product_id])
    cart = current_enduser.product_carts.new(Porduct_id: Porduct.id)
    crat.destroy
    redirect_to puroduct_carts_path
  end
end
