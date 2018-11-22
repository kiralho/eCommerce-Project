class Province < ApplicationRecord
  # frozen_string_literal: true
  has_many :users
  validates :name, :tax_rate, presence: true
  validates :name, uniqueness: true
  validates :tax_rate, :gst, :hst, numericality: true
end
