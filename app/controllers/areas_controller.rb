class AreasController < ApplicationController
  before_action :authenticate_user!
  before_action :set_room
  before_action :set_area, only: [:show, :edit, :update, :destroy :sort]

  # GET /areas
  def index
    @areas = Area.all
  end

  # GET /areas/1
  def show
  end

  # GET /areas/new
  def new
    @area = @room.area.new
  end

  # GET /areas/1/edit
  def edit
  end

  def sort
  end

  # POST /areas
  def create
    @area = @room.areas.new(todo_params)

    if @area.save
      @status = true
    else
      @status = false
    end
  end

  # PATCH/PUT /areas/1
  def update
    if @area.update(area_params)
      @status = true
    else
      @status = false
    end
  end

  # DELETE /areas/1
  def destroy
    @area.destroy
  end

  private

    def set_room
      @room = current_user.rooms.find_by(id: params[:room_id])
      redirect_to(rooms_url, alert: "ERROR!!") if @room.blank?
    end

    def set_area
      @area = @room.areas.find_by(id: params[:id])
    end

    def area_params
      params.require(:area).permit(:put_depth, :put_width)
    end
end
