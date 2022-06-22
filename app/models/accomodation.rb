class Accomodation < ApplicationRecord
  belongs_to :trip
  validates :name, :accomodation_type, :start_date, :end_date, :price, :address, presence: true
end

# Test
# accomodation = Accomodation.create(place_name: 'Ritz', accomodation_type: 'Hotel', start_book: Date.today, end_book: Date.today + 2, price: 70, address: 'Paris', trip: trip)
