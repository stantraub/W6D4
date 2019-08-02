# == Schema Information
#
# Table name: artworks
#
#  id         :bigint           not null, primary key
#  image_url  :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  title      :string           not null
#  artist_id  :string           not null
#

class Artwork < ApplicationRecord
  validates :title, :image_url, :artist_id, presence: true, uniqueness: true 
  validates :artist_id, uniqueness: { scope: :title }

  belongs_to :artist,
    foreign_key: :artist_id,
    class_name: :User
  
  has_many :shared_artworks, dependent: :destroy,
    foreign_key: :artwork_id,
    class_name: :ArtworkShare
  
  has_many :shared_viewers,
  through: :shared_artworks,
  source: :shared_viewer

  has_many :comments, dependent: :destroy,
    foreign_key: :artwork_id,
    class_name: :Comment
end
