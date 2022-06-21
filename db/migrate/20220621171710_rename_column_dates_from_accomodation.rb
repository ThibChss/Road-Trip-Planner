class RenameColumnDatesFromAccomodation < ActiveRecord::Migration[7.0]
  def change
    rename_column :accomodations, :start_book, :start_date
    rename_column :accomodations, :end_book, :end_date
  end
end
