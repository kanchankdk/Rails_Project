require "test_helper"

class FbookingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fbooking = fbookings(:one)
  end

  test "should get index" do
    get fbookings_url
    assert_response :success
  end

  test "should get new" do
    get new_fbooking_url
    assert_response :success
  end

  test "should create fbooking" do
    assert_difference('Fbooking.count') do
      post fbookings_url, params: { fbooking: { age: @fbooking.age, gender: @fbooking.gender, name: @fbooking.name } }
    end

    assert_redirected_to fbooking_url(Fbooking.last)
  end

  test "should show fbooking" do
    get fbooking_url(@fbooking)
    assert_response :success
  end

  test "should get edit" do
    get edit_fbooking_url(@fbooking)
    assert_response :success
  end

  test "should update fbooking" do
    patch fbooking_url(@fbooking), params: { fbooking: { age: @fbooking.age, gender: @fbooking.gender, name: @fbooking.name } }
    assert_redirected_to fbooking_url(@fbooking)
  end

  test "should destroy fbooking" do
    assert_difference('Fbooking.count', -1) do
      delete fbooking_url(@fbooking)
    end

    assert_redirected_to fbookings_url
  end
end
