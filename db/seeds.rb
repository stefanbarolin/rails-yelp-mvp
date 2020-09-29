# Faker gem
require 'faker'

# Message to start the seed
puts "Cleaning database..."
Restaurant.destroy_all

# Creating 5 fake resto
puts "Creating 5 restaurants..."

5.times do
  restaurant = Restaurant.new( phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    address: Faker::Address.full_address,
    name: Faker::Restaurant.name,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample)
  restaurant.save!
  puts "Created #{restaurant.name}"
end

puts "Finished!"
