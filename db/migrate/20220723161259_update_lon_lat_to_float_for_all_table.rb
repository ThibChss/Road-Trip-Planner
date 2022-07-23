class UpdateLonLatToFloatForAllTable < ActiveRecord::Migration[7.0]
  def change
    change_column :transportations, :start_longitude, :float, using: 'transportations.start_longitude::float'
    change_column :transportations, :start_latitude, :float, using: 'transportations.start_latitude::float'
    change_column :transportations, :end_longitude, :float, using: 'transportations.end_longitude::float'
    change_column :transportations, :end_latitude, :float, using: 'transportations.end_latitude::float'
    change_column :accomodations, :longitude, :float, using: 'accomodations.longitude::float'
    change_column :accomodations, :latitude, :float, using: 'accomodations.latitude::float'
    change_column :activities, :longitude, :float, using: 'activities.longitude::float'
    change_column :activities, :latitude, :float, using: 'activities.latitude::float'
  end
end
