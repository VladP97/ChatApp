class RoomsController < ApplicationController
  def show
    @messages = Room.find(params[:id]).messages
    @room = Room.find(params[:id])
  end
end
