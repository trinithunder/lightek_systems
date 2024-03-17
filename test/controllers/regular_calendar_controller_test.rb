require "test_helper"

class RegularCalendarControllerTest < ActionDispatch::IntegrationTest
  test "should get type:string" do
    get regular_calendar_type:string_url
    assert_response :success
  end
end
