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
    @all_ranks = Product.find(Favorite.group(:product_id).order('count(product_id) desc').limit(5).pluck(:product_id))
    @most_viewed = Product.order('impressions_count DESC').take(5)
  end

  def show
    @product = Product.find(params[:id])
    @cart = ProductCart.new
    @disks = @product.disks
    @price = (@product.price * 1.08).floor

    @count = @product.product_stock - 0
    impressionist(@product, nil, :unique => [:session_hash])
  
    # @carts = ProductCart.where(enduser_id: current_enduser.id)
    # if @carts.product_ids.include?(@product.id)
    # @carts.each do |cart|
    #     if cart.product_id == @product.product_id
    #     count =  @product.product_count - cart.product_count
    #     @count = count

    # end

    # end

    # end
    # end
  end
end
