class TripsController < ApplicationController

  def new
    @trip = Trip.new
    @hikers = Hiker.all
  end

  def create
    @trip = Trip.create(
    hiker_id: trip_params[:trip][:hiker_id],
    hike_id: params[:hike_id],
    completed_at: trip_params[:trip][:completed_at],
    notes: trip_params[:trip][:notes]
    )
    redirect_to backpack_path(@trip.hiker_id)
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def update
    @trip = Trip.find(params[:id])
    Trip.update(params[:id], trip_params[:trip])
    redirect_to backpack_path(@trip.hiker_id)
  end

  private

  def trip_params
    params.permit(trip: [:hiker_id, :name, :notes, :completed_at])
  end
end
