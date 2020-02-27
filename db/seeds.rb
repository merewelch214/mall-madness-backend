# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(username: 'user1', password: 'password', role: 'owner')
user = User.create(username: 'user2', password: 'password', role: 'owner')
user = User.create(username: 'user3', password: 'password', role: 'owner')
user = User.create(username: 'user4', password: 'password', role: 'shopper')
user = User.create(username: 'user5', password: 'password', role: 'shopper')
user = User.create(username: 'user6', password: 'password', role: 'shopper')