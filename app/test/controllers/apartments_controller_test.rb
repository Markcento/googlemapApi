require 'test_helper'

class ApartmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apartment = apartments(:one)
  end

  test "should get index" do
    get apartments_url
    assert_response :success
  end

  test "should get new" do
    get new_apartment_url
    assert_response :success
  end

  test "should create apartment" do
    assert_difference('Apartment.count') do
      post apartments_url, params: { apartment: { city: @apartment.city, country: @apartment.country, hours: @apartment.hours, name: @apartment.name, phone_number: @apartment.phone_number, postal_code: @apartment.postal_code, state: @apartment.state, street1: @apartment.street1, street2: @apartment.street2 } }
    end

    assert_redirected_to apartment_url(Apartment.last)
  end

  test "should show apartment" do
    get apartment_url(@apartment)
    assert_response :success
  end

  test "should get edit" do
    get edit_apartment_url(@apartment)
    assert_response :success
  end

  test "should update apartment" do
    patch apartment_url(@apartment), params: { apartment: { city: @apartment.city, country: @apartment.country, hours: @apartment.hours, name: @apartment.name, phone_number: @apartment.phone_number, postal_code: @apartment.postal_code, state: @apartment.state, street1: @apartment.street1, street2: @apartment.street2 } }
    assert_redirected_to apartment_url(@apartment)
  end

  test "should destroy apartment" do
    assert_difference('Apartment.count', -1) do
      delete apartment_url(@apartment)
    end

    assert_redirected_to apartments_url
  end
end
