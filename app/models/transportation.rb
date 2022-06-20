class Transportation < ApplicationRecord
  belongs_to :trip
  validates :name, :transportation_type, :start_date, :end_date, :start_address, :end_address, :price, presence: true
end

# Test
# transportation = Transportation.create(name: 'Audi A6', transportation_type: 'car rental', start_date: Date.today, end_date: (Date.today + 1), price: 80, start_address: 'Orléans', end_address: 'Paris', trip: trip)
