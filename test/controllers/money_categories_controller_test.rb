require "test_helper"

class MoneyCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @money_category = money_categories(:one)
  end

  test "should get index" do
    get money_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_money_category_url
    assert_response :success
  end

  test "should create money_category" do
    assert_difference("MoneyCategory.count") do
      post money_categories_url, params: { money_category: { title: @money_category.title } }
    end

    assert_redirected_to money_category_url(MoneyCategory.last)
  end

  test "should show money_category" do
    get money_category_url(@money_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_money_category_url(@money_category)
    assert_response :success
  end

  test "should update money_category" do
    patch money_category_url(@money_category), params: { money_category: { title: @money_category.title } }
    assert_redirected_to money_category_url(@money_category)
  end

  test "should destroy money_category" do
    assert_difference("MoneyCategory.count", -1) do
      delete money_category_url(@money_category)
    end

    assert_redirected_to money_categories_url
  end
end
