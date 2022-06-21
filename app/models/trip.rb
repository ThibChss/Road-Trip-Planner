class Trip < ApplicationRecord
  STATUS = %w[cancelled confirmed pending]

  belongs_to :user
  has_many :activities, dependent: :destroy
  has_many :transportations, dependent: :destroy
  has_many :accomodations, dependent: :destroy
  validates :name, :start_date, :end_date, :status, presence: true
  validates :status, acceptance: { accept: STATUS }
end

# Test
# trip = Trip.create(name: 'El Triposs', start_date: Date.today - 1, end_date: Date.today + 10, status: 'confirmed', user: user)
