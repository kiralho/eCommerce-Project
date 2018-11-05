class AddGstToProvince < ActiveRecord::Migration[5.2]
  def change
    add_column :provinces, :gst, :float
  end
end
