class CreateSeats < ActiveRecord::Migration[5.1]
  def change
    create_table :seats do |t|
      t.string :type
      t.integer :number
      t.boolean :busy, default: :false
      t.boolean :upper

      t.timestamps
    end
  end
end
