# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts "Destroying all bookings"
Booking.destroy_all

puts "Destroying all flats"
Flat.destroy_all

# puts "Destroying all users"
# User.destroy_all


berlin_address = [
  "Unter den Linden 77, 10117 Berlin",
  "Albrechtstraße 22, 10117 Berlin",
  "Krausnickstraße 9, 10115 Berlin",
  "Heinrich-Heine-Straße 9, 10179 Berlin",
  "Singerstraße 22, 10243 Berlin",
  "Ifflandstraße 12, 10179 Berlin",
  "Calvinstraße 8, 10557 Berlin",
  "Bandelstraße 44, 10559 Berlin",
  "Birkenstraße 51-53, Berlin",
  "Genthiner Str. 41, 10785 Berlin",
  "Winterfeldtstraße 27, 10781 Berlin",
  "Winterfeldtstraße 67-53, 10781 Berlin",
  "Grainauer Str. 13-1, 10777 Berlin",
  "Friesenstraße 16, 10965 Berlin",
  "Großbeerenstraße 57A, 10965 Berlin",
  "Rügener Str. 2, 13355 Berlin",
  "Bellermannstraße 92, 13357 Berlin",
  "Exerzierstraße 12, 13357 Berlin",
  "Thurneysserstraße 6, 13357 Berlin",
  "Schulstraße 41, 13347 Berlin",
  "Triftstraße 58-61, 13353 Berlin",
  "Kiautschoustraße 3, 13353 Berlin",
  "Ugandastraße 1-8, 13351 Berlin",
  "Sambesistraße 3-10, 13351 Berlin",
  "Müllerstraße 79B, 13349 Berlin",
  ]




20.times do |flat|
  flat = Flat.new(
    name: Faker::Name.first_name,
    description: Faker::Superhero.name + " flat",
    price: rand(50..150),
    address: berlin_address.sample,
    user_id: rand(User.first.id..User.last.id))
  flat.save
end


puts "Created #{Flat.all.count} flats"
