class ApplicationController < ActionController::Base
  protect_from_forgery

  def init_current_user
    @user = User.find_by_id(session[:user_id]) unless session[:user_id].nil?
  end

  def ensure_user_is_logged_in!
    redirect_to(root_url) if session[:user_id].nil?
  end

  def user_is_logged_in?
    !session[:user_id].nil?
  end

end
