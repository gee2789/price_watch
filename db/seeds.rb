# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Accounts
account1 = Account.create(email:"gee@gee.com", password:"1234")

# array to iterate and seed database
array = [1,2,3,4,5]

# Watches
names = ["Speedy", "5513", "79090", "3110S"]
brand = ["Omega", "Rolex", "Tudor", "Heuer"]
description = ["expensive, but worth it!", "great provenance", "pass, this is too shitty", "why would i buy this?", "I like shitty tropical dials"]

# Price
condition = ["LNIB", "Mint", "Near Mint", "Excellent", "Very Good", "Good", "Fair", "Poor"]
seller_type = ["Dealer", "Collector", "Private", "Auction", "Dealer"]

# Iterate across array count to create random seed
array.map do |count|
  watch = Watch.create(name: array.sample, brand: brand.sample, reference: nil, description: description.sample)
  price1 = Price.create(price: rand(1000..10000), condition: condition.sample, seller_type: seller_type.sample)
  price2 = Price.create(price: rand(1000..10000), condition: condition.sample, seller_type: seller_type.sample)
  price3 = Price.create(price: rand(1000..10000), condition: condition.sample, seller_type: seller_type.sample)
  watch.prices.push(price1, price2, price3)
  account1.watches << watch
end
