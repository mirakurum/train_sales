class AddRailCarsToTrain < ActiveRecord::Migration[5.1]
  def change
    add_belongs_to :rail_cars, :trains
  end
end
