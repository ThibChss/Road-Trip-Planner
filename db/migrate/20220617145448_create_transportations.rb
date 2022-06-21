class CreateTransportations < ActiveRecord::Migration[7.0]
  def change
    create_table :transportations do |t|
      t.string :name
      t.string :type
      t.datetime :start_date
      t.datetime :end_date
      t.string :start_address
      t.string :end_address
      t.string :start_longitude
      t.string :start_latitude
      t.string :end_longitude
      t.string :end_latitude
      t.integer :price

      t.timestamps
    end
  end
end
