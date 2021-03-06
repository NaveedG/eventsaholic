# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

locations = ["Logan Square", "River North", "West Side"]

10.times do
Client.create(username: Faker::Twitter.screen_name, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, location: locations.sample, password: "password", password_confirmation: "password")
end

Venue.create(name: "Logan Bar", location:'Logan Square' , capacity: 100 , venue_type: "Bar", logo:'Logan_bar_logo.png')
Venue.create(name: "The Boiler Room" , location: "Logan Square" , capacity: 140 , venue_type: "Restaurant", logo:'boiler_room_logo.jpg')
Venue.create(name: "East Room", location: "Logan Square"  , capacity: 120 , venue_type:"Bar", logo: 'east_room_logo.jpeg')
Venue.create(name: "Fado Irish Pub", location: "River North" , capacity: 210, venue_type:"Restaurant", logo: 'fado_irish_pub_logo2.jpg')
Venue.create(name: "RPM Italian", location: "River North"  , capacity: 240 , venue_type: "Restaurant", logo: 'rpmitalian_logo.png')
Venue.create(name: 'Beatrix', location: "River North" , capacity: 155 , venue_type: "Restaurant", logo: 'Beatrix_Logo.png' )
Venue.create(name: 'Underground', location: 'River North' , capacity: 270 , venue_type: "Club", logo: 'Underground_logo.jpg')
Venue.create(name: 'Disco' , location:"River North"  , capacity: 310 , venue_type:"Club", logo: 'disco_logo.png' )
Venue.create(name: "Au Cheval", location: "West Side" , capacity: 260, venue_type: "Restaurant", logo: 'aucheval_logo.png')
Venue.create(name: 'The Aviary', location: "West Side" , capacity: 150, venue_type: "Bar", logo: 'the_aviary_logo.png')
Venue.create(name: "Formento's", location: "West Side" , capacity: 270, venue_type: "Restaurant", logo: "formento's_logo.png")



Vendor.create(name: "Ezcater", category: "Catering")
Vendor.create(name: "Zerocater", category: "Catering")
Vendor.create(name: "Blue Plate", category: "Catering")
Vendor.create(name: "J&L Catering", category: 'Catering')
Vendor.create(name: "Large Music", category: "Music")
Vendor.create(name: "Trala", category: "Music")
Vendor.create(name: "Geartrack", category: "Music")
Vendor.create(name: "A Posh Production", category: 'Decor')
Vendor.create(name: "Art Of Imagination", category: "Decor")
Vendor.create(name: "Revel Decor", category: "Decor")

Event.create(title:"Rosemarie's Wedding" , client_id: 1, venue_id: 5, event_type:"wedding" , date: Date.new(2020, 04, 21) )
Event.create(title:"Dan's Bachellor Party" , client_id: 5, venue_id: 10, event_type:"bachellor party" , date: Date.new(2020, 03, 28), approved: true)
Event.create(title:"Rina's Birthday Party" , client_id: 9, venue_id: 8, event_type:"birthday party" , date: Date.new(2020, 04, 25), approved: true )

puts "SEEDED"
