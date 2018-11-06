class Province < ApplicationRecord
  has_many :users
  validates :name, :tax_rate, presence: true
  validates :name, uniqueness: true
  validates :tax_rate, :gst, :hst, numericality: true
end
