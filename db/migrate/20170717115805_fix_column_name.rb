class FixColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :rail_cars, :type, :rc_type
    rename_column :seats, :type, :s_type
  end
end
