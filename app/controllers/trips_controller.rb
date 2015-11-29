class TripsController < ApplicationController

  def new
    @trip = Trip.new
    @hikers = Hiker.all
  end

  def create
    # name_to_hiker = Hiker.where(["name = ?", trip_params[:trip][:name]]).to_a
    trip = Trip.create(
    hiker_id: trip_params[:trip][:hiker_id],
    hike_id: params[:hike_id],
    notes: trip_params[:trip][:notes],
    completed_at: trip_params[:trip][:completed_at]
    )
    redirect_to hiker_path(trip.hiker_id)
  end

  private

  def trip_params
    params.permit(trip: [:hiker_id, :name, :notes, :completed_at])
  end
end
