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

20.times do |flat|
  flat = Flat.new(
    name: Faker::Name.first_name,
    description: Faker::Superhero.name + " flat",
    price: rand(50..150),
    user_id: rand(User.first.id..User.last.id))
  flat.save
end


puts "Created #{Flat.all.count} flats"
