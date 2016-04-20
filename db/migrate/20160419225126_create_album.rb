class CreateAlbum < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.integer :userId
      t.string :title
    end
  end
end
