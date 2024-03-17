require "test_helper"

class SchoolCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @school_category = school_categories(:one)
  end

  test "should get index" do
    get school_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_school_category_url
    assert_response :success
  end

  test "should create school_category" do
    assert_difference("SchoolCategory.count") do
      post school_categories_url, params: { school_category: { title: @school_category.title } }
    end

    assert_redirected_to school_category_url(SchoolCategory.last)
  end

  test "should show school_category" do
    get school_category_url(@school_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_school_category_url(@school_category)
    assert_response :success
  end

  test "should update school_category" do
    patch school_category_url(@school_category), params: { school_category: { title: @school_category.title } }
    assert_redirected_to school_category_url(@school_category)
  end

  test "should destroy school_category" do
    assert_difference("SchoolCategory.count", -1) do
      delete school_category_url(@school_category)
    end

    assert_redirected_to school_categories_url
  end
end
