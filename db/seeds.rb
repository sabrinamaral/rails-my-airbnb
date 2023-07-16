# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Flat.destroy_all
puts 'Deleting old flats from DB'
puts 'Creating new ones...'

10.times do
  puts name = Faker::Lorem.sentence
  puts address = Faker::Address.full_address
  puts description = Faker::Lorem.paragraph_by_chars
  puts price_per_night = rand(200..800)
  puts number_of_guests = rand(1..4)

  flat = Flat.new(name: name, address: address, description: description, price_per_night: price_per_night, number_of_guests: number_of_guests)
  puts flat.save!
end
