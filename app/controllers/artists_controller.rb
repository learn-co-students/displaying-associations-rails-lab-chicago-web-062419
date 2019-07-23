
class ArtistsController < ApplicationController
  before_action :artist, only: [:show, :update, :edit, :create, :destroy]

  def index
    @artists = Artist.all
  end

  def show
    artist
    @songs = Song.where artist_id: "#{@artist.id}"
    # binding.pry
  end

  def new
    @artist = Artist.new
  end

  def create
    artist

    if @artist.save
      redirect_to artist_path(@artist)
    else
      render :new
    end
  end

  def edit
    artist
  end

  def update
    artist

    @artist.update(artist_params)

    if @artist.save
      redirect_to @artist
    else
      render :edit
    end
  end

  def destroy
    artist
    @artist.destroy
    flash[:notice] = "Artist deleted."
    redirect_to artists_path
  end


  private

  def artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name)
  end
end
