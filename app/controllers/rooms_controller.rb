class RoomsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_room, only: [:show, :edit, :update, :destroy]

  # GET /rooms
  def index
    @rooms = current_user.rooms.all
  end

  # GET /rooms/new
  def new
    @room = current_user.rooms.new
  end

  # GET /rooms/1/edit
  def edit
  end

  # POST /rooms
  def create
    @room = current_user.rooms.new(room_params)

    if @room.save
      @status = true
    else
      @status = false
    end
  end

  # PATCH/PUT /rooms/1
  def update
    if @room.update(room_params)
      @status = true
    else
      @status = false
    end
  end

  # DELETE /rooms/1
  def destroy
    @room.destroy
  end

  private
    def set_room
      @room = current_user.rooms.find_by(id: params[:id])
      redirect_to(rooms_url, alert: "ERROR!!") if @room.blank?
    end
    
    def set_room
      params.require(:room).permit(:room_name, :room_depth, :room_width)
    end
end
