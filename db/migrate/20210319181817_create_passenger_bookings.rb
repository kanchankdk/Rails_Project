class CreatePassengerBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :passenger_bookings do |t|
      t.integer :passenger_id
      t.integer :booking_id
      t.timestamps
    end
  end
end
