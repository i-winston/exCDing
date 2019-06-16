class ProductsController < ApplicationController
  def new
    @product = Product.new
    @disk = @product.disks.build
    @song = @disk.songs.build
  end

  def create
    @product = Product.new(product_params)

    @product.save
    redirect_to admins_products_path
  end

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @cart = ProductCart.new
    @disks = @product.disks
    @price = (@product.price * 1.08).floor
  end
end
