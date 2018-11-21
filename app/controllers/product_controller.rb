class ProductController < ApplicationController
  def index
    @product_collection = Product.all.page(params[:page]).per(2)
  end

  def show
    @product = Product.find(params[:id])
  end

  def add_to_cart
    @id = params[:id].to_i
    @product_to_add = Product.find(@id)
    session[:cart].each do |product|
      if product["id"] == @id
        @product_found = true
      end
    end
    unless @product_found
      session[:cart] << { :id => @id, :price => @product_to_add.price, :quantity => 1 }
    end
    redirect_to root_url
  end

  def remove_item_from_cart
    @id = params[:id].to_i
    session[:newCart] = []
    session[:cart].each do |product|
      unless product["id"] == @id
        session[:newCart] << product
      end
    end
    session[:cart] = session[:newCart]
    redirect_to root_url
  end

  def change_item_quantity
    @id = params[:id].to_i
    session[:cart].each do |product|
      if params[:teste].to_i <= 0
        remove_item_from_cart
      elsif product["id"] == @id
        product["quantity"] = params[:teste].to_i
        redirect_to root_url
      end
    end
  end

  def clear_cart
    session[:cart] = []
    redirect_to root_url
  end
end
