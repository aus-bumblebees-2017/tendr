# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  diets = ["Pescaterian", "Vegetarian", "Omnivore"]

10.times do
	User.create(email: Faker::Internet.email, password: "password", user_name: Faker::Hipster.word, zipcode: Faker::Number.number(5), diet: diets.sample)

	100.times do
		Food.create(place_id: rand(1..50), url: Faker::Number.number(15))
		History.create(food_id: rand(1..500), user_id: rand(1..10) , state: rand(1..3))
	end

	5.times do
		Place.create(google_id: Faker::Number.number(15))
	end
end

