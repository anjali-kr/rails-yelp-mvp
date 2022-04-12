# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# puts('Deleting db..')
# db:drop
puts('Deleting all restaurants..')
Restaurant.destroy_all

puts('Seeding database with 10 restaurants..')
10.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: Restaurant::CATEGORY.sample)
end
puts('Restaurants created')
