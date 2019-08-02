class ArtworksController < ApplicationController
  def index
    # debugger
    artworks = Artwork.where(artist_id: params[:user_id])

    render json: artworks
  end
  
  def create
    artwork = Artwork.new(artwork_params)

    if artwork.update_attributes(artwork_params)
      render json: artwork 
    else
      render json: artwork.errors.full_messages, status: 422
    end
  end

  def destroy
    artwork = Artwork.find(params[:id])
    artwork.destroy
    render json: artwork
  end
  
  def show
    artwork = Artwork.find(params[:id])

    render json: artwork
  end


  def update
     artwork = Artwork.find(params[:id])

    if artwork.update_attributes(artwork_params)
      render json: artwork 
    else
      render json: artwork.errors.full_messages, status: 422
    end
  end


  private

  def artwork_params
    params.require(:artwork).permit(:artist_id, :title, :image_url) #=> {artist_id: '4'}
  end


end
