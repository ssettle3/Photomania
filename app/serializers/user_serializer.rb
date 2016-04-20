class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email, :website, :phone, :address, :albums

  def albums
    Album.where(userId: self.id)
  end
end
