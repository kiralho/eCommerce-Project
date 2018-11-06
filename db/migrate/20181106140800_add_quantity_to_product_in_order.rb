class AddQuantityToProductInOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :product_in_orders, :quantity, :integer
  end
end
