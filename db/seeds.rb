require 'csv'

User.destroy_all
Cart.destroy_all
Store.destroy_all
Product.destroy_all

user1 = User.create(username: 'me', password: '123', role: 'owner')
user2 = User.create(username: 'you', password: '123', role: 'owner')
user3 = User.create(username: 'jay', password: '123', role: 'owner')
user7 = User.create(username: 'bobby', password: '123', role: 'owner')
user8 = User.create(username: 'frieda', password: '123', role: 'owner')
user9 = User.create(username: 'test', password: '123', role: 'owner')
user10 = User.create(username: 'tester', password: '123', role: 'owner')
user11 = User.create(username: 'bob', password: '123', role: 'owner')
user12 = User.create(username: 'tom', password: '123', role: 'owner')
user13 = User.create(username: 'mary', password: '123', role: 'owner')
user14 = User.create(username: 'joseph', password: '123', role: 'owner')
user15 = User.create(username: 'jesus', password: '123', role: 'owner')
user16 = User.create(username: 'john', password: '123', role: 'owner')
user17 = User.create(username: 'sally', password: '123', role: 'owner')
user18 = User.create(username: 'sue', password: '123', role: 'owner')
user19 = User.create(username: 'use', password: '123', role: 'owner')
user20 = User.create(username: 'bus', password: '123', role: 'owner')

hotTopic = Store.create(user: user1, name: 'Hot Topic', category: 'Novelty')
greatAmericanCookieCo = Store.create(user: user2, name: 'Great American Cookie Co', category: 'Food')
bbw = Store.create(user: user3, name: 'Bath and Body Works', category: 'Novelty')
limitedToo = Store.create(user: user7, name: 'Limited Too', category: 'Clothing')
pacSun = Store.create(user: user8, name: 'PacSun', category: 'Novelty')
spencers = Store.create(user: user9, name: 'Spencers', category: 'Novelty')
gadzooks = Store.create(user: user10, name: 'Gadzooks', category: 'Clothing')
samGoody = Store.create(user: user11, name: 'Sam Goody', category: 'Music')
claires = Store.create(user: user12, name: 'Claires', category: 'Accessories')
sbarro = Store.create(user: user13, name: 'Sbarro', category: 'Food')
macys = Store.create(user: user14, name: 'Macys', category: 'Department')
mervyns = Store.create(user: user15, name: 'Mervyns', category: 'Department')
jcPenny = Store.create(user: user16, name: 'JCPenny', category: 'Department')
Sears = Store.create(user: user17, name: 'Sears', category: 'Department')
waldenBooks = Store.create(user: user18, name: 'Walden Books', category: 'Books')
wicksnsticks = Store.create(user: user19, name: 'Wicks n Sticks', category: 'Home goods')
wetseal = Store.create(user: user20, name: 'Wet Seal', category: 'Clothing')


CSV.foreach(Rails.root.join('lib/seeds/products.csv'), headers: true) do |row|
    Product.create(
        name: row[0],
        description: row[1],
        store: Store.find_by(name: row[2]),
        price: row[3],
        img_url: row[4]
    )
end