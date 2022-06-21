class ModifyingColumsTypeFromModels < ActiveRecord::Migration[7.0]
  def change
    rename_column :transportations, :type, :transportation_type
    rename_column :accomodations, :type, :accomodation_type
    rename_column :activities, :type, :activity_type
  end
end
