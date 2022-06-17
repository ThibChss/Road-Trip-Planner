class Activity < ApplicationRecord
  belongs_to :trip
  validates :place_name, :type, :date, :duration, :price, :address, presence: true
end
