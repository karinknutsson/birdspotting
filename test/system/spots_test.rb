require "application_system_test_case"

class SpotsTest < ApplicationSystemTestCase
  test "visiting the index" do
    login_as users(:marge)
    visit "/users/1/spots"
    # assert_selector("li.spot", count: Spot.count)
  end
end
