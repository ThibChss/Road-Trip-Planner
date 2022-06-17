class Trip < ApplicationRecord
  STATUS = %w[cancelled confirmed pending]

  belongs_to :user
  has_many :activities, :transportations, :accomodations, dependent: :destroy
  validates :name, :start_date, :end_date, :status, presence: true
  validates :status, acceptance: { accept: STATUS }
  validate :end_date_after_start_date?

  private

  def end_date_after_start_date?
    # Confirm that the end date cannot be before the start date
    if :end_date < :start_date
      errors.add :end_date, "Must be after the starting date"
    end
  end
end
