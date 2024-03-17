require "application_system_test_case"

class SchoolCategoriesTest < ApplicationSystemTestCase
  setup do
    @school_category = school_categories(:one)
  end

  test "visiting the index" do
    visit school_categories_url
    assert_selector "h1", text: "School categories"
  end

  test "should create school category" do
    visit school_categories_url
    click_on "New school category"

    fill_in "Title", with: @school_category.title
    click_on "Create School category"

    assert_text "School category was successfully created"
    click_on "Back"
  end

  test "should update School category" do
    visit school_category_url(@school_category)
    click_on "Edit this school category", match: :first

    fill_in "Title", with: @school_category.title
    click_on "Update School category"

    assert_text "School category was successfully updated"
    click_on "Back"
  end

  test "should destroy School category" do
    visit school_category_url(@school_category)
    click_on "Destroy this school category", match: :first

    assert_text "School category was successfully destroyed"
  end
end
