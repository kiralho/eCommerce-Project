class SearchController < ApplicationController
  def index

  end

  def results
    @category = Category.find_by(name: params[:q])
    unless @category.nil?
     @products = Product.where(category_id: @category.id)
    end
  end

end
