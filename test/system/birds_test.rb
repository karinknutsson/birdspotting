require "application_system_test_case"

class BirdsTest < ApplicationSystemTestCase
  test "visiting the index" do
    login_as users(:marge)
    visit "/birds"
    # assert_selector("li.bird", count: Bird.count)
  end
end
