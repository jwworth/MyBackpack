class HikesController < ApplicationController
  def home

  end
  
  def index
    @hikes = Hike.all
  end

  def show
    @hike = Hike.find(params[:id])
  end
end
