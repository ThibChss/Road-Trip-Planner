class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :place_name
      t.string :type
      t.datetime :date
      t.time :duration
      t.integer :price
      t.string :address
      t.string :longitude
      t.string :latitude

      t.timestamps
    end
  end
end
