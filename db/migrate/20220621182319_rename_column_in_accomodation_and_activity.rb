class RenameColumnInAccomodationAndActivity < ActiveRecord::Migration[7.0]
  def change
    rename_column :accomodations, :place_name, :name
    rename_column :activities, :place_name, :name
  end
end
