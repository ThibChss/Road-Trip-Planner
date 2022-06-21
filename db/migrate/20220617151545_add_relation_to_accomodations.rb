class AddRelationToAccomodations < ActiveRecord::Migration[7.0]
  def change
    add_reference :accomodations, :trip, null: false, foreign_key: true
  end
end
