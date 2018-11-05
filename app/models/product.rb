class Product < ApplicationRecord
  belongs_to :category
  has_many :product_in_orders
  has_many :orders, through: :product_in_orde
  validates :name, :price, presence: true
  validates :price, numericality: true
end
