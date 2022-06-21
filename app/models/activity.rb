class Activity < ApplicationRecord
  belongs_to :trip
  validates :place_name, :activity_type, :start_date, :end_date, :price, :address, presence: true
end

# Test
# activity = Activity.create(place_name: 'Tour Eiffeil', activity_type: 'Monument', date: Date.today + 1, address: 'Paris', trip: trip, duration: '2h', price: 10)
