class ProductController < ApplicationController
  def index
    @product_collection = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end
end
