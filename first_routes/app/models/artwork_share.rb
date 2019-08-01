class ArtworkShare < ApplicationRecord
  belongs_to :artwork,
  foreign_key: :artwork_id,
  class_name: :Artwork

  belongs_to :shared_viewer,
  foreign_key: :viewer_id,
  class_name: :User


end
