json.extract! flight, :id, :airline, :origin_airport, :destination_airport, :departure, :duration, :price, :capacity, :available_seats, :created_at, :updated_at
json.url flight_url(flight, format: :json)
