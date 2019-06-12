class GenresController < ApplicationController

	def index
		@genres = Genre.all
		@genre = Genre.new
	end

	def create
		@genre = genre.new(genre_params)
		@genres = Genre.all
		if @genre.save
			flash[:notice] = 'ジャンルを新規登録しました。'
			redirect_to #どこか
		else
			flash[:notice] = 'ジャンルの登録に失敗しました。'
			render :index
		end
	end

	def destroy
      @genre = Genre.find(params[:id])
      @genre.destroy
      redirect_to admin_genre_index_path
  	end

	private

	def genre_params
		params.repuire(:genre).permit(:genre_name)
	end

end