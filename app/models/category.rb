class Category < ApplicationRecord
  has_many :product
  validates :name, presence: true
  validates :name, uniqueness: true
end
