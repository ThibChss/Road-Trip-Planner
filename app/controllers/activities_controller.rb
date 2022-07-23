class ActivitiesController < ApplicationController
  before_action :set_trip, only: %i[create update]

  def create
    @activity = Activity.new(activity_params)
    @activity.trip = @trip
    if @activity.save
      redirect_to trip_path(@trip)
    else
      redirect_to trip_path(@trip), status: :unprocessable_entity, notice: 'Missing information'
    end
  end

  private

  def set_trip
    @trip = Trip.find(params[:trip_id])
  end

  def activity_params
    params.require(:activity).permit(:name, :activity_type, :start_date, :end_date, :address, :price)
  end
end
