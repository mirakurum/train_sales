class CreateRailCars < ActiveRecord::Migration[5.1]
  def change
    create_table :rail_cars do |t|
      t.string :type
      t.integer :number
      t.integer :seat

      t.timestamps
    end
  end
end
