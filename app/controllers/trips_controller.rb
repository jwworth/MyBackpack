class TripsController < ApplicationController

  def new
    @trip = Trip.new
    @hikers = Hiker.all
  end

  def create
    name_to_hiker = Hiker.where(["name = ?", trip_params[:trip][:name]]).to_a
    trip = Trip.create(
    hiker_id: name_to_hiker.id,
    hike_id: params[:hike_id],
    notes: trip_params[:trip][:notes]
    )
  end

  private

  def trip_params
    params.permit(trip: [:name, :notes])
  end
end
