class Province < ApplicationRecord
  has_many :user
  validates :name, :tax_rate, presence: true
  validates :name, uniqueness: true
  validates :tax_rate, numericality: true
end
