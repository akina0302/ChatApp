class RoomsController < ApplicationController

  def index
  end
  
  def new
    @rooom = Room.new
  end
  
  def create
    binding.pry
  end

  def destroy
    room = Room.find(params[:id])
    room.destroy
    redirect_to root_path
  end
  
  private

  def room_params
    params.require(:room).permit(:name, user_ids: [])
  end
end