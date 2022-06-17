class CreateAccomodations < ActiveRecord::Migration[7.0]
  def change
    create_table :accomodations do |t|
      t.string :place_name
      t.string :type
      t.datetime :start_book
      t.datetime :end_book
      t.integer :price
      t.string :address
      t.string :longitude
      t.string :latitude

      t.timestamps
    end
  end
end
