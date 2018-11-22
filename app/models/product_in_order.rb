class ProductInOrder < ApplicationRecord
  # frozen_string_literal: true
  belongs_to :product
  belongs_to :order
end
