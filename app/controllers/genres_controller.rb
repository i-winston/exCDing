class GenresController < ApplicationController

	def index
		@genre = Genre.new
		@genres = Genre.all
	end

	def create
		@genre = Genre.new(genre_params)
		@genres = Genre.all
		@genre.save
			flash[:info] = 'ジャンルを新規登録しました。'
			redirect_to genres_path
	end

	def destroy
      @genre = Genre.find(params[:id])
      @genre.destroy
      redirect_to genres_path
  	end

	private

	def genre_params
		params.require(:genre).permit(:genre_name)
	end

end