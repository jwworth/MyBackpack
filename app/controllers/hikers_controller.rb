class HikersController < ApplicationController
  def index
    @hikers = Hiker.all
  end

  def show
    @hiker = Hiker.find(params[:id])
    hikes = Trip.where([ "hiker_id = ?", params[:id]])
    @saved_hikes = []
    hikes.each do |hike|
      @saved_hikes.push(Hike.find(hike.hike_id))
      #puts hike.hike_id
    end
    @all_dem
  end
end
