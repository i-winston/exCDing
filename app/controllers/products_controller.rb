class ProductsController < ApplicationController


  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @disks = @product.disks
    @price = (@product.price * 1.08).floor
  end

end
