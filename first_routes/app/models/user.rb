class User < ApplicationRecord
   validates :username, presence: true, uniqueness: true 
  
   has_many :artworks,
    foreign_key: :artist_id,
    class_name: :Artwork

    has_many :shared_viewers,
    foreign_key: :viewer_id,
    class_name: :ArtworkShare

    has_many :shared_artworks,
    through: :artworks,
    source: :shared_artworks
end
