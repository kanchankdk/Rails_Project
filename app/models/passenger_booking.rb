class PassengerBooking < ApplicationRecord

    belongs_to :passenger
    belongs_to :flights
   

end
