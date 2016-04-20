class AlbumsController < ApplicationController
  def show
    @album = AlbumSerializer.new(album)
  end

  private

  def album
    Album.find(params[:id])
  end
end
