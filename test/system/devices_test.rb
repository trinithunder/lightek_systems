require "application_system_test_case"

class DevicesTest < ApplicationSystemTestCase
  setup do
    @device = devices(:one)
  end

  test "visiting the index" do
    visit devices_url
    assert_selector "h1", text: "Devices"
  end

  test "should create device" do
    visit devices_url
    click_on "New device"

    fill_in "Identifier for vendor", with: @device.identifier_for_vendor
    fill_in "Localized model", with: @device.localized_model
    fill_in "Model", with: @device.model
    fill_in "Name", with: @device.name
    fill_in "System name", with: @device.system_name
    fill_in "System version", with: @device.system_version
    fill_in "User", with: @device.user_id
    fill_in "User interface idiom", with: @device.user_interface_idiom
    click_on "Create Device"

    assert_text "Device was successfully created"
    click_on "Back"
  end

  test "should update Device" do
    visit device_url(@device)
    click_on "Edit this device", match: :first

    fill_in "Identifier for vendor", with: @device.identifier_for_vendor
    fill_in "Localized model", with: @device.localized_model
    fill_in "Model", with: @device.model
    fill_in "Name", with: @device.name
    fill_in "System name", with: @device.system_name
    fill_in "System version", with: @device.system_version
    fill_in "User", with: @device.user_id
    fill_in "User interface idiom", with: @device.user_interface_idiom
    click_on "Update Device"

    assert_text "Device was successfully updated"
    click_on "Back"
  end

  test "should destroy Device" do
    visit device_url(@device)
    click_on "Destroy this device", match: :first

    assert_text "Device was successfully destroyed"
  end
end
