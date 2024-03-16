require "application_system_test_case"

class MoneyCategoriesTest < ApplicationSystemTestCase
  setup do
    @money_category = money_categories(:one)
  end

  test "visiting the index" do
    visit money_categories_url
    assert_selector "h1", text: "Money categories"
  end

  test "should create money category" do
    visit money_categories_url
    click_on "New money category"

    fill_in "Title", with: @money_category.title
    click_on "Create Money category"

    assert_text "Money category was successfully created"
    click_on "Back"
  end

  test "should update Money category" do
    visit money_category_url(@money_category)
    click_on "Edit this money category", match: :first

    fill_in "Title", with: @money_category.title
    click_on "Update Money category"

    assert_text "Money category was successfully updated"
    click_on "Back"
  end

  test "should destroy Money category" do
    visit money_category_url(@money_category)
    click_on "Destroy this money category", match: :first

    assert_text "Money category was successfully destroyed"
  end
end
