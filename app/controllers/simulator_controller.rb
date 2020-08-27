class SimulatorController < ApplicationController
  before_action :authenticate_user!

  # GET /simulator
  def index
    @room = Room.find(params[:room_id])
  end

end
