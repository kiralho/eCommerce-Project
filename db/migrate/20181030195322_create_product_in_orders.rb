class CreateProductInOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :product_in_orders do |t|
      t.references :product, foreign_key: true
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
