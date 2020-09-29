# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { phone_number: '0102030405', name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: 'chinese' }
pizza_east =  { phone_number: '0101010101', name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: 'belgian' }

[ dishoom, pizza_east ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
