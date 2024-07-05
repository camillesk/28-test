# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

STATES.map { |state| State.create(name: state[0], acronym: state[1], services: state[2], minimum_age: state[3]) }

CATEGORIES.map { |category_name| Category.create(name: category_name) }

PRODUCTS.map do |product| 
  category = Category.find_by(name: product[:category])

  product[:category] = category

  Product.create(product)
end

10.times do
  Patient.create(full_name: Faker::Superhero.name, email: Faker::Internet.email, date_of_birth: Faker::Date.birthday(min_age: 10, max_age: 99), state: State.find(rand(1..52)))
end

StateException.create(state: State.first, product: Product.last)

StateProduct.create(state: State.last, product: Product.first, minimum_age: 23)