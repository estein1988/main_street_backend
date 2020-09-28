require 'test_helper'

class FinancialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @financial = financials(:one)
  end

  test "should get index" do
    get financials_url, as: :json
    assert_response :success
  end

  test "should create financial" do
    assert_difference('Financial.count') do
      post financials_url, params: { financial: { advertising: @financial.advertising, ammoritization: @financial.ammoritization, business_id: @financial.business_id, cogs: @financial.cogs, depreciation: @financial.depreciation, employee_benefits: @financial.employee_benefits, equipment: @financial.equipment, insurance: @financial.insurance, interest: @financial.interest, maintenance: @financial.maintenance, office_supplies: @financial.office_supplies, other_expense: @financial.other_expense, r_and_d: @financial.r_and_d, rent: @financial.rent, salaries: @financial.salaries, sales_revenue: @financial.sales_revenue, service_revenue: @financial.service_revenue, software: @financial.software, taxes: @financial.taxes, travel: @financial.travel, utilities: @financial.utilities, website: @financial.website, year: @financial.year } }, as: :json
    end

    assert_response 201
  end

  test "should show financial" do
    get financial_url(@financial), as: :json
    assert_response :success
  end

  test "should update financial" do
    patch financial_url(@financial), params: { financial: { advertising: @financial.advertising, ammoritization: @financial.ammoritization, business_id: @financial.business_id, cogs: @financial.cogs, depreciation: @financial.depreciation, employee_benefits: @financial.employee_benefits, equipment: @financial.equipment, insurance: @financial.insurance, interest: @financial.interest, maintenance: @financial.maintenance, office_supplies: @financial.office_supplies, other_expense: @financial.other_expense, r_and_d: @financial.r_and_d, rent: @financial.rent, salaries: @financial.salaries, sales_revenue: @financial.sales_revenue, service_revenue: @financial.service_revenue, software: @financial.software, taxes: @financial.taxes, travel: @financial.travel, utilities: @financial.utilities, website: @financial.website, year: @financial.year } }, as: :json
    assert_response 200
  end

  test "should destroy financial" do
    assert_difference('Financial.count', -1) do
      delete financial_url(@financial), as: :json
    end

    assert_response 204
  end
end
