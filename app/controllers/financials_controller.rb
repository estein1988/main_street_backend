class FinancialsController < ApplicationController
  before_action :set_financial, only: [:show, :update, :destroy]

  def index
    @financials = Financial.all

    render json: @financials, include: :business
  end

  def show
    render json: @financial, incldue: :business
  end

  def create
    @financial = Financial.new(financial_params)

    if @financial.valid?
      @financial.save
      render json: @financial, status: :created, location: @financial
    else 
      render json: @financial.errors.full_messages
    end

  end

  def update
    if @financial.update(financial_params)
      render json: @financial
    else
      render json: @financial.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @financial.destroy
  end

  private
    def set_financial
      @financial = Financial.find(params[:id])
    end

    def financial_params
      params.require(:financial).permit(:year, :sales_revenue, :service_revenue, :advertising, :cogs, :employee_benefits, :equipment, :insurance, :maintenance, :office_supplies, :rent, :r_and_d, :salaries, :software, :travel, :utilities, :website, :other_expense, :interest, :taxes, :ammoritization, :depreciation, :business_id)
    end
end

# if @financial.save
#   render json: @financial, status: :created, location: @financial
# else
#   render json: @financial.errors.full_messages
# end