require "test_helper"

class UserCalendarControllerTest < ActionDispatch::IntegrationTest
  test "should get user:references" do
    get user_calendar_user:references_url
    assert_response :success
  end
end
