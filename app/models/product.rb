class Product < ApplicationRecord
  belongs_to :category
  validates :name, :price, presence: true
  validates :price, numericality: true
end
