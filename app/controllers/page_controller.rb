class PageController < ApplicationController
  # frozen_string_literal: true

  def show
    @page = Page.find(params[:id])
  end
end
