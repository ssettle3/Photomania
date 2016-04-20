class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :title, :photos, :thumbnailUrl

  def photos
    Photo.where(albumId: self.id)
  end

  def thumbnailUrl
    photos.first.thumbnailUrl
  end
end
