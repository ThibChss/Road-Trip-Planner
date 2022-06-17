class Accomodation < ApplicationRecord
  belongs_to :trip
  validates :place_name, :type, :start_book, :end_book, :price, :address, presence: true
  validate :end_book_after_start_book?

  private

  def end_book_after_start_book?
    # Confirm that the end date cannot be before the start date
    if :end_book < :start_book
      errors.add :end_book, "Must be after the starting date"
    end
  end
end
