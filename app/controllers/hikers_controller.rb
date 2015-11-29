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
  end

  def new
    @hiker = Hiker.new
  end

  def create
    hiker = Hiker.create(hiker_params[:hiker])
    redirect_to hiker_path(id: hiker.id )
  end

  def edit
    @hiker = Hiker.find(params[:id])
  end

  def update
    @hiker = Hiker.find(params[:id])
    Hiker.update(params[:id], hiker_params[:hiker])
    redirect_to hiker_path(params[:id])
  end

  def destroy
    Hiker.destroy(params[:id])
    redirect_to hikers_path
  end

  private

  def hiker_params
    params.permit(hiker: [:name, :location, :bio])
  end
end
