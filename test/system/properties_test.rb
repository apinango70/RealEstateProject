require "application_system_test_case"

class PropertiesTest < ApplicationSystemTestCase
  setup do
    @property = properties(:one)
  end

  test "visiting the index" do
    visit properties_url
    assert_selector "h1", text: "Properties"
  end

  test "should create property" do
    visit properties_url
    click_on "New property"

    fill_in "Address", with: @property.address
    fill_in "Area", with: @property.area
    fill_in "Bathrooms", with: @property.bathrooms
    fill_in "Bedrooms", with: @property.bedrooms
    fill_in "City", with: @property.city
    fill_in "Description", with: @property.description
    fill_in "Floors", with: @property.floors
    fill_in "Garages", with: @property.garages
    fill_in "Neighborhood", with: @property.neighborhood
    fill_in "Sale or rent price", with: @property.sale_or_rent_price
    fill_in "State", with: @property.state
    fill_in "Title", with: @property.title
    fill_in "Type offer", with: @property.type_offer_id
    fill_in "Type property", with: @property.type_property_id
    fill_in "User", with: @property.user_id
    click_on "Create Property"

    assert_text "Property was successfully created"
    click_on "Back"
  end

  test "should update Property" do
    visit property_url(@property)
    click_on "Edit this property", match: :first

    fill_in "Address", with: @property.address
    fill_in "Area", with: @property.area
    fill_in "Bathrooms", with: @property.bathrooms
    fill_in "Bedrooms", with: @property.bedrooms
    fill_in "City", with: @property.city
    fill_in "Description", with: @property.description
    fill_in "Floors", with: @property.floors
    fill_in "Garages", with: @property.garages
    fill_in "Neighborhood", with: @property.neighborhood
    fill_in "Sale or rent price", with: @property.sale_or_rent_price
    fill_in "State", with: @property.state
    fill_in "Title", with: @property.title
    fill_in "Type offer", with: @property.type_offer_id
    fill_in "Type property", with: @property.type_property_id
    fill_in "User", with: @property.user_id
    click_on "Update Property"

    assert_text "Property was successfully updated"
    click_on "Back"
  end

  test "should destroy Property" do
    visit property_url(@property)
    click_on "Destroy this property", match: :first

    assert_text "Property was successfully destroyed"
  end
end
