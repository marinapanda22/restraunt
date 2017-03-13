class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def current_user
  	@current_user = User.last
  end
  def access_denied(exception)
    flash[:danger] = exception.message
    redirect_to root_url
  end

end



