require "test_helper"

class PropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @property = properties(:one)
  end

  test "should get index" do
    get properties_url
    assert_response :success
  end

  test "should get new" do
    get new_property_url
    assert_response :success
  end

  test "should create property" do
    assert_difference("Property.count") do
      post properties_url, params: { property: { address: @property.address, area: @property.area, bathrooms: @property.bathrooms, bedrooms: @property.bedrooms, city: @property.city, description: @property.description, floors: @property.floors, garages: @property.garages, neighborhood: @property.neighborhood, sale_or_rent_price: @property.sale_or_rent_price, state: @property.state, title: @property.title, type_offer_id: @property.type_offer_id, type_property_id: @property.type_property_id, user_id: @property.user_id } }
    end

    assert_redirected_to property_url(Property.last)
  end

  test "should show property" do
    get property_url(@property)
    assert_response :success
  end

  test "should get edit" do
    get edit_property_url(@property)
    assert_response :success
  end

  test "should update property" do
    patch property_url(@property), params: { property: { address: @property.address, area: @property.area, bathrooms: @property.bathrooms, bedrooms: @property.bedrooms, city: @property.city, description: @property.description, floors: @property.floors, garages: @property.garages, neighborhood: @property.neighborhood, sale_or_rent_price: @property.sale_or_rent_price, state: @property.state, title: @property.title, type_offer_id: @property.type_offer_id, type_property_id: @property.type_property_id, user_id: @property.user_id } }
    assert_redirected_to property_url(@property)
  end

  test "should destroy property" do
    assert_difference("Property.count", -1) do
      delete property_url(@property)
    end

    assert_redirected_to properties_url
  end
end
