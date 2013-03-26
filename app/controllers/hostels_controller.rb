class HostelsController < ApplicationController
  
  layout 'hostel'
  before_filter :ensure_user_is_logged_in!, :except => :show
  before_filter :init_current_user
 
  # GET /:username/hostels
  def index
     redirect_to(@user.hostels_page, :notice => "Access denied") unless @user.username == params[:username] 
     @hostels = @user.hostels.all
  end
    
  # GET /:username/hostels/:id  
  def show
     @hostel = Hostel.find_by_short_name(params[:id])
  end

  # GET /:username/hostels/new
  def new

  end

  # POST /:username/hostels
  def create
     form = params[:form].merge({:short_name => params[:form][:name].gsub(/(\s)+/, '').downcase})
     hostel = @user.hostels.create(form)
     redirect_to @user.hostel_page(hostel.short_name)
  end

  # GET /:username/hostels/:id/edit
  def edit
     @hostel = Hostel.find_by_short_name(params[:id])
     redirect_to(@user.home_page, :notice => "Access denied") unless current_user_is_owner?
  end

  # PUT /:username/hostels/:id
  def update
     form = params[:form].merge({:short_name => params[:form][:name].gsub(/(\s)+/, '').downcase})
     hostel = Hostel.find_by_short_name(params[:id])
     hostel.update_attributes(form)
     redirect_to @user.hostel_page(hostel.short_name)
  end

  # DELETE /:username/hostels/:id
  def destroy
     hostel = Hostel.find_by_short_name(params[:id])
     redirect_to(@user.home_page, :notice => "Access denied") unless current_user_is_owner?
     hostel.destroy
     redirect_to @user.hostels_page, :notice => "Your hostel was successfully deleted" 
  end

  def avatar
     hostel = Hostel.find_by_short_name(params[:id])
     unless hostel.hostel_images.empty?
        hostel.hostel_images.first.destroy
     end
     hostel_image = HostelImage.create(params[:hostel_image])
     hostel_image.hostel_id = hostel.id
     hostel_image.save!
     redirect_to hostel_page_url(@user.username, hostel.short_name)
  end

  private

  def current_user_is_owner?
     (@user.username == params[:username] and @user.id == @hostel.user_id)
  end

end
