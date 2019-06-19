class ProductCartsController < ApplicationController
  def index
    @carts = ProductCart.where(enduser_id: current_enduser.id)
  end

  def create
    @product = ProductCart.where(enduser_id: current_enduser.id)

    @product_ids = @product.pluck(:product_id)
    @cart = ProductCart.new(product_cart_params)
    @cart.enduser_id = current_enduser.id

    if @product_ids.include?(@cart.product_id)

      @product.each do |product|
        if product.product_id == @cart.product_id
          count = product.product_count + @cart.product_count
          product.update(product_count: count)
          redirect_to product_carts_path
          end
      end
    else
      @cart.save
      redirect_to product_carts_path
  end

    # find_or_create_by rails

    # if @product_ids.include?(@cart.product_id)

    #   @product_ids.each do |s|
    #    if  s == @cart.product_id
    #      p = ProductCart.find_by(product_id: s)
    #      quantity = p.product_count + @cart.product_count
    #      binding.pry
    #      p.update(product_count: quantity)
    #    end
    #   end
    # product_cart = ProductCart.find_by(:product_count, ["product_count"])

    # product_cart + product_count
    # product_carts.update(@cart)
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
