class Order < ApplicationRecord
  belongs_to :user
  has_many :product, through: :product_in_order
end
