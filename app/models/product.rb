class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :category
  has_many :product_in_orders
  has_many :orders, through: :product_in_orders
  validates :name, :price, presence: true
  validates :price, numericality: true
end
