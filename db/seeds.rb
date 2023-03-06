# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

User.destroy_all
Product.destroy_all


10.times do
    User.create(        
        email: Faker::Internet.email,
        password: Faker::Internet.password,        
    )
end

5.times do
 product =  Product.create(
        title: Faker::Games::Pokemon.name,
        price: 10,        
        description: Faker::Lorem.sentence,        
        user_id: User.last.id
        )
    
end

