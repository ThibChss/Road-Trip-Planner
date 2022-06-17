class Transportation < ApplicationRecord
  belongs_to :trip
  validates :name, :type, :start_date, :end_date, :start_place, :end_place, :price, presence: true
  validate :end_date_after_start_date?

  private

  def end_date_after_start_date?
    # Confirm that the end date cannot be before the start date
    if :end_date < :start_date
      errors.add :end_date, "Must be after the starting date"
    end
  end
end
