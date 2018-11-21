class ApplicationController < ActionController::Base
  helper_method :categories
  helper_method :pages
  before_action :initialize_session

  def categories
    @all_categories = Category.all
  end

  def pages
    @all_pages = Page.all
  end

  def initialize_session
    session[:cart] ||= []
  end

  def load_cart
    @cart = Product.find(session[:cart])
  end

end
