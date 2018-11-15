class ProductController < ApplicationController
  def index
    @product_collection = Product.all.page(params[:page]).per(2)
  end

  def show
    @product = Product.find(params[:id])
  end
end
