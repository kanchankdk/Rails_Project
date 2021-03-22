class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.string :airline
      t.string :origin_airport
      t.string :destination_airport
      t.timestamp :departure
      t.string :duration
      t.decimal :price
      t.integer :capacity
      t.integer :available_seats

      t.timestamps
    end
  end
end
