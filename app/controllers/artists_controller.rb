class ArtistsController < ApplicationController

	def new
		@artists = Artist.all
		@artist = Artist.new
	end

	def create
		@artist = Artist.new(artist_params)
		@artists = Artist.all
		if @artist.save
			flash[:notice] = 'アーティストを新規登録しました。'
			redirect_to #どこか
		else
			flash[:notice] = 'アーティストの登録に失敗しました。'
			render :new
		end
	end

	def destroy
      @artist = Artist.find(params[:id])
      @artist.destroy
      redirect_to admin_artist_index_path
  	end

	private

	def artist_params
		params.repuire(:artist).permit(:artist_name)
	end

end