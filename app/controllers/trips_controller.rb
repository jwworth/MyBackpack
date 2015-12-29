class TripsController < ApplicationController

before_action :require_user

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.create(
    hiker_id: @current_user.id,
    hike_id: params[:hike_id],
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
    params.permit(trip: [:name, :notes, :completed_at])
  end
end
