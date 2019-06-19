class FavoritesController < ApplicationController
  def create
    product = Product.find(params[:product_id])
    favorite = current_enduser.favorites.new(product_id: product.id)
    favorite.save
    redirect_to product_path(product)
  end

  def destroy
  	if  current_view = @product
	    product = Product.find(params[:product_id])
	    favorite = current_enduser.favorites.find_by(product_id: product.id)
	    favorite.destroy
	    redirect_to product_path(product)
	else
		product = Product.find(params[:product_id])
	    favorite = current_enduser.favorites.find_by(product_id: product.id)
	    favorite.destroy
		redirect_to enduser_path(current_enduser.id)
	end
  end
end
