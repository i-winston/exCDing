class Admins::ProductsController < ApplicationController
  before_action :authenticate_admin!
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

  def edit
    @product = Product.find(params[:id])
  end

  def show
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      flash[:success] = "商品情報を更新しました。"
      redirect_to admins_products_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:info] = "商品を削除しました。"
    redirect_to admins_products_path
  end

  private

  def product_params
    params.require(:product).permit(:jacket, :product_name, :label_id, :product_stock, :product_status, :price,
                                    disks_attributes: [:id, :product_id, :disk_name, :_destroy,
                                                       songs_attributes: [:id, :disk_id, :artist_id, :genre_id, :song_name, :number, :_destroy]])
  end
end
