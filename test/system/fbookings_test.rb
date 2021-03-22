require "application_system_test_case"

class FbookingsTest < ApplicationSystemTestCase
  setup do
    @fbooking = fbookings(:one)
  end

  test "visiting the index" do
    visit fbookings_url
    assert_selector "h1", text: "Fbookings"
  end

  test "creating a Fbooking" do
    visit fbookings_url
    click_on "New Fbooking"

    fill_in "Age", with: @fbooking.age
    fill_in "Gender", with: @fbooking.gender
    fill_in "Name", with: @fbooking.name
    click_on "Create Fbooking"

    assert_text "Fbooking was successfully created"
    click_on "Back"
  end

  test "updating a Fbooking" do
    visit fbookings_url
    click_on "Edit", match: :first

    fill_in "Age", with: @fbooking.age
    fill_in "Gender", with: @fbooking.gender
    fill_in "Name", with: @fbooking.name
    click_on "Update Fbooking"

    assert_text "Fbooking was successfully updated"
    click_on "Back"
  end

  test "destroying a Fbooking" do
    visit fbookings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fbooking was successfully destroyed"
  end
end
