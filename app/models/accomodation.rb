class Accomodation < ApplicationRecord
  belongs_to :trip
  validates :place_name, :accomodation_type, :start_book, :end_book, :price, :address, presence: true
end

# Test
# accomodation = Accomodation.create(place_name: 'Ritz', accomodation_type: 'Hotel', start_book: Date.today, end_book: Date.today + 2, price: 70, address: 'Paris', trip: trip)
