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
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "00029273", category: "indian"}
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ" }
mcdonalds = { name: "McDonalds", address: "7 Boundary St, London E2 7JE" }
peppes =  { name: "Peppes", address: "56A Shoreditch High St, London E1 6PQ" }
fishnchip = { name: "Fishnchip", address: "7 Boundary St, London E2 7JE" }

[ dishoom, pizza_east, mcdonalds, peppes, fishnchip ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
