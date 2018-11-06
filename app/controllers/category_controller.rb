class CategoryController < ApplicationController
  def index
    @category_collection = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @products = @category.products
  end
end
