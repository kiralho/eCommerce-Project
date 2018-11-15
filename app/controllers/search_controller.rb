class SearchController < ApplicationController
  def index
    @categories = Category.all
  end

  def results
    @categories = Category.all
    @teste = params[:q]

    if params[:c] == "" && params[:q] == ""
      @products = Product.all
    elsif params[:c] == ""
      @products = Product.where("name LIKE ? OR description LIKE ?", "%#@teste%", "%#@teste%")
    else
      @category = Category.find(params[:c])
      @products = Product.where(category_id: @category.id)
      @products = @products.where("name LIKE ? OR description LIKE ?", "%#@teste%", "%#@teste%")
    end
  end

end
