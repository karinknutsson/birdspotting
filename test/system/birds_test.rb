require "application_system_test_case"

class BirdsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit birds_url
    assert_selector("div.white-auto-container")
  end
end
