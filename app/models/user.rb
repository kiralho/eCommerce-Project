class User < ApplicationRecord
  belongs_to :province
  validates :name, :email, :address, presence: true
  validates :email, uniqueness: true
end
