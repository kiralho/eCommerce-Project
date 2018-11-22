class Order < ApplicationRecord
  # frozen_string_literal: true
  belongs_to :user
  belongs_to :transaction_status
  has_many :product_in_orders
  has_many :products, through: :product_in_orders
end
