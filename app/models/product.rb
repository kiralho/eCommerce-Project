class Product < ApplicationRecord
  belongs_to :category
  has_many :order, through: :product_in_order
  validates :name, :price, presence: true
  validates :price, numericality: true
end
