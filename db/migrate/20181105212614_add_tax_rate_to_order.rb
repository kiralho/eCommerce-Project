class AddTaxRateToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :tax_rate, :float
  end
end
