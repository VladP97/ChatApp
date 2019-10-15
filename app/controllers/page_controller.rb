class PageController < ApplicationController
  def index
    @rooms = Room.all
  end
end
