# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  username   :string           not null
#

class User < ApplicationRecord
   validates :username, presence: true, uniqueness: true 
  
   has_many :artworks, dependent: :destroy,
    foreign_key: :artist_id,
    class_name: :Artwork

    has_many :shared_viewers,
    foreign_key: :viewer_id,
    class_name: :ArtworkShare

    has_many :shared_artworks, dependent: :destroy,
    through: :artworks,
    source: :shared_artworks

    has_many :comments, dependent: :destroy,
        foreign_key: :user_id,
        class_name: :Comment 
end
