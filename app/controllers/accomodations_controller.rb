class AccomodationsController < ApplicationController
  before_action :set_trip, only: %i[create update]

  def create
    @accomodation = Accomodation.new(accomodation_params)
    @accomodation.trip = @trip
    if @accomodation.save
      redirect_to trip_path(@trip)
    else
      redirect_to trip_path(@trip), status: :unprocessable_entity, notice: 'Missing information'
    end
  end

  private

  def set_trip
    @trip = Trip.find(params[:trip_id])
  end

  def accomodation_params
    params.require(:accomodation).permit(:name, :accomodation_type, :start_date, :end_date, :address, :price)
  end
end
