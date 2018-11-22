class TransactionStatus < ApplicationRecord
  # frozen_string_literal: true
  has_many :orders
end
