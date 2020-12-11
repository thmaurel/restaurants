# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Review.destroy_all
Restaurant.destroy_all

puts 'Creating restaurants'
['Pitaya', 'Macdo', 'KFC', 'La tour d argent'].each do |name|
  restaurant = Restaurant.create(name: name)
  5.times do
    Review.create(content: 'Super', rating: 5, restaurant: restaurant)
  end
  puts "#{name} created"
end
puts 'Restaurants created'
