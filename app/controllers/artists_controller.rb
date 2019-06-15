class ArtistsController < ApplicationController
  def index
    @artist = Artist.new
    @artists = Artist.all
  end

  def create
    @artist = Artist.new(artist_params)
    @artists = Artist.all
    @artist.save
    flash[:info] = 'アーティストを新規登録しました。'
    redirect_to artists_path
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    redirect_to artists_path
    end

  private

  def artist_params
    params.require(:artist).permit(:artist_name)
  end
end
