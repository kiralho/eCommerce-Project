class TransactionStatus < ApplicationRecord
  has_many :orders
end
