class TripsController < ApplicationController
  before_action :set_trip, only: %i[show update delete]

  def show
    @transportation = Transportation.new
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user = current_user
    if @trip.save
      redirect_to profile_path(current_user)
    else
      render :profile, status: :unprocessable_entity
    end
  end

  private

  def set_trip
    @trip = Trip.find(params[:id])
  end

  def trip_params
    params.require(:trip).permit(:name, :start_date, :end_date, :status)
  end
end
