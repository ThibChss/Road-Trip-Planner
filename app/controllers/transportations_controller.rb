class TransportationsController < ApplicationController
  before_action :transportation_params, only: %i[create update]
  before_action :set_trip, only: :create

  def create
    @transportation = Transportation.new(transportation_params)
    @transportation.trip = @trip
    if @transportation.save
      redirect_to trip_path(@trip)
    else
      redirect_to trip_path(@trip), status: :unprocessable_entity, notice: 'Missing information'
    end
  end

  private

  def set_trip
    @trip = Trip.find(params[:trip_id])
  end

  def transportation_params
    params.require(:transportation).permit(:name, :transportation_type, :start_date,
                                           :end_date, :start_address, :end_address, :price)
  end
end
