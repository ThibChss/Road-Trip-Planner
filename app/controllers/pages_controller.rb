class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def profile
    @trips = current_user.trips
    @trip = Trip.new
  end
end
