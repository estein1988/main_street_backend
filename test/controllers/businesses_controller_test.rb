require 'test_helper'

class BusinessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @business = businesses(:one)
  end

  test "should get index" do
    get businesses_url, as: :json
    assert_response :success
  end

  test "should create business" do
    assert_difference('Business.count') do
      post businesses_url, params: { business: { business_city: @business.business_city, business_name: @business.business_name, business_phone: @business.business_phone, business_state: @business.business_state, business_street: @business.business_street, business_zip: @business.business_zip, email: @business.email, first_name: @business.first_name, industry: @business.industry, last_name: @business.last_name, password_digest: @business.password_digest, username: @business.username, website: @business.website } }, as: :json
    end

    assert_response 201
  end

  test "should show business" do
    get business_url(@business), as: :json
    assert_response :success
  end

  test "should update business" do
    patch business_url(@business), params: { business: { business_city: @business.business_city, business_name: @business.business_name, business_phone: @business.business_phone, business_state: @business.business_state, business_street: @business.business_street, business_zip: @business.business_zip, email: @business.email, first_name: @business.first_name, industry: @business.industry, last_name: @business.last_name, password_digest: @business.password_digest, username: @business.username, website: @business.website } }, as: :json
    assert_response 200
  end

  test "should destroy business" do
    assert_difference('Business.count', -1) do
      delete business_url(@business), as: :json
    end

    assert_response 204
  end
end
