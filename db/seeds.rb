# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'pp'

ProductInOrder.destroy_all
Product.destroy_all
Order.destroy_all
Category.destroy_all
TransactionStatus.destroy_all
User.destroy_all
Province.destroy_all
AdminUser.destroy_all

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

json = File.read('provinces.json')
parsed_json = JSON.parse(json)

json2 = File.read('product.json')
parsed_json2 = JSON.parse(json2)

categories = [
  { :name => 'Kitchen' },
  { :name => 'Electronic' },
  { :name => 'Video Game' },
  { :name => 'Movie' },
  { :name => 'Sport' }
]

transaction_status = [
  { :name => 'Pending' },
  { :name => 'Paid' },
  { :name => 'Shipped' },
  { :name => 'Delivered' },
  { :name => 'Canceled' }
]

parsed_json["message"].each do |province, info|
    name = info["name"]
    rate = info["tax"]
    gst = info["gst"]
    hst = info["hst"]
    Province.create(name: name, tax_rate: rate, gst: gst, hst: hst)
end



User.create(name: "vinicius", email: "teste@teste.com", address: "rua teste 1323", province_id: Province.first.id)

# Category.create(name: "computador")

categories.each do |category|
  Category.create(name: category[:name])
end

# Product.create(name: "laptop", price: 500, description: "teste teste teste", category_id: 1)

parsed_json2["message"].each do |product, info|
  name = info["name"]
  price = info["price"]
  description = info["description"]
  category = info["category"]
  Product.create(name: name, price: price, description: description, category_id: category)
end

# TransactionStatus.create(name: "Pending")

transaction_status.each do |transaction_type|
  TransactionStatus.create(name: transaction_type[:name])
end

Order.create(user_id: 1, transaction_status_id: 1)
Order.create(user_id: 1, transaction_status_id: 2)

ProductInOrder.create(order_id: 1, product_id: 1, price: Product.first.price, quantity: 1)
ProductInOrder.create(order_id: 1, product_id: 2, price: Product.second.price, quantity: 2)

ProductInOrder.create(order_id: 2, product_id: 4, price: Product.fourth.price, quantity: 2)

Page.create(name: "about", content: "The Generic Store has been in the retail business for more than 5 years serving the community with outstanding customer service and great variety of products. The store decided to enter the online business
            so customers can shop even at home!")
Page.create(name: "contact us", content: "In case of any problems or questions about products, the store can be contacted at 204-111-1111 or on the email generic.customerservice@genericstore.com")