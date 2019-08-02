# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: 'user1')
user2 = User.create(username: 'user2')
user3 = User.create(username: 'user3')
user4 = User.create(username: 'user4')
user5 = User.create(username: 'user5')

artwork1 = Artwork.create(image_url: 'blah.com', title: 'blah', artist_id: user1.id)
artwork2 = Artwork.create(image_url: 'hello.com', title: 'hello', artist_id: user2.id)
artwork3 = Artwork.create(image_url: 'facebook.com', title: 'facebook', artist_id: user3.id)
artwork4 = Artwork.create(image_url: 'appacaemy.com', title: 'App Academy', artist_id: user4.id)
artwork5 = Artwork.create(image_url: 'hackreactor.com', title: 'Hack Reactor', artist_id: user5.id)

ArtworkShare.create(artwork_id: artwork1.id, viewer_id: user5.id)
ArtworkShare.create(artwork_id: artwork2.id, viewer_id: user4.id)
ArtworkShare.create(artwork_id: artwork3.id, viewer_id: user2.id)
ArtworkShare.create(artwork_id: artwork4.id, viewer_id: user3.id)
ArtworkShare.create(artwork_id: artwork5.id, viewer_id: user1.id)



