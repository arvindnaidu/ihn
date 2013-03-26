class RoomsController < ApplicationController

  layout 'room'
  before_filter :ensure_user_is_logged_in!, :except => :show
  before_filter :init_current_user
      
  # GET /:username/hostels/:hostel_id/rooms
  def index
     redirect_to(@user.hostels_page, :notice => "Access denied") unless @user.username == params[:username]
     @hostel = Hostel.find_by_short_name(params[:hostel_id])
     @rooms = @hostel.available_rooms.all
  end
    
  # GET /:username/hostels/:hostel_id/rooms/:id
  def show
     @hostel = Hostel.find_by_short_name(params[:hostel_id])
     @room = AvailableRoom.find_by_id(params[:id])
  end

  # GET /:username/hostels/:hostel_id/rooms/new
  def new
     @hostel = Hostel.find_by_short_name(params[:hostel_id])
  end

  # POST /:username/hostels/:hostel_id/rooms
  def create
     hostel = Hostel.find_by_short_name(params[:hostel_id])
     room = hostel.available_rooms.create(params[:form])
     redirect_to room_page_url(@user.username, hostel.short_name, room.id)
  end

  # GET /:username/hostels/:hostel_id/rooms/:id/edit
  def edit
     @hostel = Hostel.find_by_short_name(params[:hostel_id])
     @room = AvailableRoom.find_by_id(params[:id])
     redirect_to(@user.home_page, :notice => "Access denied") unless current_user_is_owner?
  end
  
  # PUT /:username/hostels/:hostel_id/rooms/:id
  def update
     room = AvailableRoom.find_by_id(params[:id])
     room.update_attributes(params[:form])
     redirect_to room_page_url(@user.username, params[:hostel_id], room.id)
  end

  # DELETE /:username/hostels/:hostel_id/rooms/:id
  def destroy
     room = AvailableRoom.find_by_id(params[:id])
     redirect_to(@user.home_page, :notice => "Access denied") unless current_user_is_owner?
     room.destroy
     redirect_to @user.hostels_page, :notice => "Your hostel was successfully deleted"
  end

  def avatar
     room = AvailableRoom.find_by_id(params[:id])
     room.room_images.first.destroy unless room.room_images.empty?
     room_image = RoomImage.create(params[:room_image])
     room_image.available_room_id = room.id
     room_image.save!
     redirect_to room_page_url(@user.username, params[:hostel_id], room.id)
  end

  private

  def current_user_is_owner?
     (@user.username == params[:username] and @user.id == @hostel.user_id)
  end

end
