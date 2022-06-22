class TripsController < ApplicationController
  before_action :set_trip, only: %i[show update delete]
  before_action :calendar_date, :accomodation_setup, :transportation_setup, :activity_setup, only: :show

  def show() end

  def create
    @trip = Trip.new(trip_params)
    @trip.user = current_user
    if @trip.save
      redirect_to profile_path(current_user)
    else
      render :profile, status: :unprocessable_entity, notice: 'Something went wrong'
    end
  end

  private

  def set_trip
    @trip = Trip.find(params[:id])
  end

  def trip_params
    params.require(:trip).permit(:name, :start_date, :end_date, :status)
  end

  def calendar_date
    @start_date = params.fetch(:start_date, Date.today).to_date
  end

  def transportation_setup
    @transportation = Transportation.new
    @transportation_date = find_start_date(Transportation)
  end

  def accomodation_setup
    @accomodation = Accomodation.new
    @accomodation_date = find_start_date(Accomodation)
  end

  def activity_setup
    @activity = Activity.new
    @activity_date = find_start_date(Activity)
  end

  def find_start_date(model_class)
    model_class.where(start_date: @start_date.beginning_of_month.beginning_of_week..@start_date.end_of_month.end_of_week)
  end
end
