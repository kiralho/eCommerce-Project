class AddTransactionStatusToOrder < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :transaction_status, foreign_key: true
  end
end
