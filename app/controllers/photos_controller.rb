class PhotosController < ApplicationController
  def show
    photo
  end

  private

  def photo
    @photo ||= Photo.find(params[:id])
  end
end
