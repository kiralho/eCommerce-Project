# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

Province.create(name: "Manitoba", tax_rate: "0.08")

User.create(name: "vinicius", email: "teste@teste.com", address: "rua teste 1323", province_id: 1)

Category.create(name: "computador")

Product.create(name: "laptop", price: 500, description: "teste teste teste", category_id: 1)

TransactionStatus.create(name: "Pending")

Order.create(user_id: 1, transaction_status_id: 1)

ProductInOrder.create(order_id: 1, product_id: 1)