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

parsed_json["message"].each do |province, info|
    name = info["name"]
    rate = info["tax"]
    Province.create(name: name, tax_rate: rate)
end

# Province.create(name: "Manitoba", tax_rate: "0.08")

# User.create(name: "vinicius", email: "teste@teste.com", address: "rua teste 1323", province_id: 1)

# Category.create(name: "computador")

# Product.create(name: "laptop", price: 500, description: "teste teste teste", category_id: 1)

# TransactionStatus.create(name: "Pending")

# Order.create(user_id: 1, transaction_status_id: 1)

# ProductInOrder.create(order_id: 1, product_id: 1)