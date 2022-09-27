# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Erasing previous flats"
Flat.destroy_all
puts "seeding NEW flats"

30.times {
  Flat.create!(
    name: Faker::Movies::Lebowski.quote,
    address: Faker::Address.street_address,
    description: Faker::Cannabis.health_benefit,
    price_per_night: rand(75..1000),
    number_of_guests: rand(2..10))
}

puts ":dB is seeded"
