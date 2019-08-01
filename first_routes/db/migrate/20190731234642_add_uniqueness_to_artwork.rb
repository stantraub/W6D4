class AddUniquenessToArtwork < ActiveRecord::Migration[5.2]
  def change
    remove_column :artworks, :title
    remove_column :artworks, :artist_id
    add_column :artworks, :title, :string, null: false
    add_column :artworks, :artist_id, :string, null: false
    add_index :artworks, :title, unique: true
    add_index :artworks, :artist_id, unique: true
  end


end
