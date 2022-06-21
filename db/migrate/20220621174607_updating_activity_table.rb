class UpdatingActivityTable < ActiveRecord::Migration[7.0]
  def change
    rename_column :activities, :date, :start_date
    add_column :activities, :end_date, :datetime
    remove_column :activities, :duration
  end
end
