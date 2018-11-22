class User < ApplicationRecord
  # frozen_string_literal: true
  belongs_to :province
  has_many :orders
  validates :name, :email, :address, presence: true
  validates :email, uniqueness: true
end
