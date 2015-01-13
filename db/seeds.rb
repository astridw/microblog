# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#photons = Photon.create([{photonname: "Astrid"}, {password: "Astrid"}])
Photon.create(photonname: "Nebula", password: "12345", photo_url: "http://images.nationalgeographic.com/wpf/media-live/photos/000/650/overrides/space237-orion-nebula_65076_600x450.jpg")
Photon.create(photonname: "Milky Way", password: "12345", photo_url: "http://www.myastrologybook.com/MilkyWayCntr600x600pxl@20q.jpg")
Photon.create(photonname: "Comet", password: "12345", photo_url: "http://www.hvezdarnacb.cz/tapetynaplochu/Hyakutake800x600.jpg")



Wave.create(photon_id: 1, post: "I light up the sky", created_at: 13.minutes.ago)
Wave.create(photon_id: 2, post: "I'm so big, the earth is inside of me!", created_at: 20.minutes.ago)
Wave.create(photon_id: 3, post: "Why does everyone keep calling me Halley?", created_at: 10.minutes.ago)


Following.create(photon_id: 1, follower_id: 2)
Following.create(photon_id: 2, follower_id: 3)
