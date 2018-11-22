class Category < ApplicationRecord
  # frozen_string_literal: true
  has_many :products
  validates :name, presence: true
  validates :name, uniqueness: true
end
