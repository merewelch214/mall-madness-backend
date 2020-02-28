# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Cart.destroy_all
Store.destroy_all
Product.destroy_all

user1 = User.create(username: 'me', password: '123', role: 'owner')
user2 = User.create(username: 'you', password: '123', role: 'owner')
user3 = User.create(username: 'jay', password: '123', role: 'owner')
user4 = User.create(username: 'meredith', password: '123', role: 'shopper')
user5 = User.create(username: 'calvin', password: '123', role: 'shopper')
user6 = User.create(username: 'brad', password: '123', role: 'shopper')
user7 = User.create(username: 'bobby', password: '123', role: 'owner')
user8 = User.create(username: 'frieda', password: '123', role: 'owner')

cart4 = Cart.create(user: user4) 
cart5 = Cart.create(user: user5) 
cart6 = Cart.create(user: user6) 

store1 = Store.create(user: user1, name: 'Hot Topic', category: 'Novelty')
store2 = Store.create(user: user2, name: 'Great American Cookie Co', category: 'Food')
store3 = Store.create(user: user3, name: 'Bath and Body Works', category: 'Novelty')
store4 = Store.create(user: user7, name: 'Limited Too', category: 'Clothing')
store5 = Store.create(user: user8, name: 'PacSun', category: 'Novelty')


product1 = Product.create(name: 'Pumpkin Candle', description: 'It smells like Thanksgiving up in here!', store: store3, price: 24.99)
product2 = Product.create(name: 'Chewy Chocolate Supreme Cookie', description: 'A really good cookie', store: store2, price: 2.50)
product3 = Product.create(name: 'Temporary Tattoos', description: 'Edgy but not forever', store: store1, price: 2.99, cart: cart4)
product4 = Product.create(name: 'Giant Cookie Cake', description: 'The cookie cake from all the parties you ever went to as a kid, complete with chocolate frosting in a star shape and white icing that tastes like nothing.', store: store2, price: 8.22)
product5 = Product.create(name: 'Red Board Shorts', description: 'Super long, really baggy board shorts. So long that they\'re basically pants', store: store5, price: 19.99)
product6 = Product.create(name: 'Sparkly 3\'4 sleeve top', description: 'Tweens loves sparkles!!!', store: store4, price: 21.05)
product7 = Product.create(name: 'Limp Bizkit T-Sheet', description: 'Inappropriate t-shirt for anyone. Fred Durst sucks.', store: store1, price: 20.00)
product8 = Product.create(name: 'Belly Button Ring', description: 'Belly button piercings are all the rage', store: store1, price: 14.99)
