require "test_helper"

class MessageControllerTest < ActionDispatch::IntegrationTest
  test "should get content:rich_text" do
    get message_content:rich_text_url
    assert_response :success
  end

  test "should get to:integer" do
    get message_to:integer_url
    assert_response :success
  end

  test "should get from:integer" do
    get message_from:integer_url
    assert_response :success
  end
end
