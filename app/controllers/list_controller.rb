class ListController < ApplicationController
  def main
  	@caves = Cafe.all
  	@categories = Category.all
  end

  def category
  	@category = Category.find(params[:id])
  end

  def one
  	@cafe = Cafe.find(params[:id])
  end
end
