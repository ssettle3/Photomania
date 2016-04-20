class CreatePhoto < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :albumId
      t.string :title
      t.string :url
      t.string :thumbnailUrl
    end
  end
end
