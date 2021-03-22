require "test_helper"

class FlightsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flight = flights(:one)
  end

  test "should get index" do
    get flights_url
    assert_response :success
  end

  test "should get new" do
    get new_flight_url
    assert_response :success
  end

  test "should create flight" do
    assert_difference('Flight.count') do
      post flights_url, params: { flight: { airline: @flight.airline, available_seats: @flight.available_seats, capacity: @flight.capacity, departure: @flight.departure, destination_airport: @flight.destination_airport, duration: @flight.duration, origin_airport: @flight.origin_airport, price: @flight.price } }
    end

    assert_redirected_to flight_url(Flight.last)
  end

  test "should show flight" do
    get flight_url(@flight)
    assert_response :success
  end

  test "should get edit" do
    get edit_flight_url(@flight)
    assert_response :success
  end

  test "should update flight" do
    patch flight_url(@flight), params: { flight: { airline: @flight.airline, available_seats: @flight.available_seats, capacity: @flight.capacity, departure: @flight.departure, destination_airport: @flight.destination_airport, duration: @flight.duration, origin_airport: @flight.origin_airport, price: @flight.price } }
    assert_redirected_to flight_url(@flight)
  end

  test "should destroy flight" do
    assert_difference('Flight.count', -1) do
      delete flight_url(@flight)
    end

    assert_redirected_to flights_url
  end
end
