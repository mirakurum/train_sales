class AddSeatsToRailCar < ActiveRecord::Migration[5.1]
  def change
    add_belongs_to :seats, :rail_car
  end
end
