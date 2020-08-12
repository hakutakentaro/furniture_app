require "application_system_test_case"

class FurnituresTest < ApplicationSystemTestCase
  setup do
    @furniture = furnitures(:one)
  end

  test "visiting the index" do
    visit furnitures_url
    assert_selector "h1", text: "Furnitures"
  end

  test "creating a Furniture" do
    visit furnitures_url
    click_on "New Furniture"

    fill_in "Furniture depth", with: @furniture.furniture_depth
    fill_in "Furniture image", with: @furniture.furniture_image
    fill_in "Furniture name", with: @furniture.furniture_name
    fill_in "Furniture width", with: @furniture.furniture_width
    click_on "Create Furniture"

    assert_text "Furniture was successfully created"
    click_on "Back"
  end

  test "updating a Furniture" do
    visit furnitures_url
    click_on "Edit", match: :first

    fill_in "Furniture depth", with: @furniture.furniture_depth
    fill_in "Furniture image", with: @furniture.furniture_image
    fill_in "Furniture name", with: @furniture.furniture_name
    fill_in "Furniture width", with: @furniture.furniture_width
    click_on "Update Furniture"

    assert_text "Furniture was successfully updated"
    click_on "Back"
  end

  test "destroying a Furniture" do
    visit furnitures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Furniture was successfully destroyed"
  end
end
