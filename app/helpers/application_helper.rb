module ApplicationHelper

  def current_user
  	@current_user = User.last
  end
end
