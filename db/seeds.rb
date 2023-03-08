# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# db/seeds.rb
categories = %w[chinese italian japanese french belgian]

5.times do |i|
  Restaurant.create(
    name: "Restaurant #{i + 1}",
    address: "#{i + 1} Main St",
    phone_number: "123-456-789#{i + 1}",
    category: categories.sample
  )
end
