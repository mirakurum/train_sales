class CreateTrains < ActiveRecord::Migration[5.1]
  def change
    create_table :trains do |t|
      t.string :tnumber

      t.timestamps
    end
  end
end
