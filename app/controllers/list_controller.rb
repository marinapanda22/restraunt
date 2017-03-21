class ListController < ApplicationController
  # layout 'admin'
  def main
  	@caves = Cafe.all
  	@categories = Category.all
  end

  def category
  	@category = Category.find(params[:id])
  end

  def one
  	@cafe = Cafe.find(params[:id])
    # Like.find_by_user_id_and_post_id(current_user.id, post.id)
    @basket = Basket.find_by_user_id_and_cafe_id(current_user.id, @cafe.id)
  end
end
