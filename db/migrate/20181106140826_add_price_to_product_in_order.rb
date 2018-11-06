class AddPriceToProductInOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :product_in_orders, :price, :float
  end
end
