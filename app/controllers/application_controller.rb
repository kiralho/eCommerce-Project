class ApplicationController < ActionController::Base

  helper_method :categories
  def categories
    @all_categories = Category.all
  end
end
