class HomeController < ApplicationController

  layout 'home'

  def index
    if user_is_logged_in?
      init_current_user
      render :layout => 'account'
    end
  end

end
