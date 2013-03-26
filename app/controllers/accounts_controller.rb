class AccountsController < ApplicationController

  layout 'account'

  #before_filter :ensure_user_is_logged_in!, :init_current_user, :except => [:login, :new, :create]
   before_filter :init_current_user, :except => [:login, :new, :create]
  def index

  end

  def show
    
  end

  def profile
     if request.post?
     	@user.update_attributes(params[:form])
     end 
  end

  def messages

  end

  def settings

  end

  def avatar
     unless @user.profile_image.nil?
     	@user.profile_image.destroy    
     end
     @profile_image = ProfileImage.create(params[:profile_image_form])
     @profile_image.user_id = @user.id
     @profile_image.save!
     redirect_to user_dashboard_page_url(@user.username)
  end

  def login
    user = User.find_by_username(params[:form][:username])
    
    if user
      session[:user_id] = user.id
      user.currently_logged_in_at = Time.now
      user.save!
      redirect_to "/#{user.username}"
    else
      redirect_to root_path
    end
  end

  def logout
    init_current_user
    @user.last_logged_in_on = @user.currently_logged_in_at
    @user.currently_logged_in_at = nil
    reset_session
    redirect_to root_path
  end

  def new
    render :layout => 'home'
  end

  def create
    user_type = UserType.find_by_permalink("nl")
    user = user_type.users.new(params[:form])    
    user.save!
    session[:user_id] = user.id
    redirect_to "/#{user.username}"
  end

  def destroy
      
  end

end
