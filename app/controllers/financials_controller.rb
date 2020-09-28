class FinancialsController < ApplicationController
  before_action :set_financial, only: [:show, :update, :destroy]

  # GET /financials
  def index
    @financials = Financial.all

    render json: @financials, include: :business
  end

  # GET /financials/1
  def show
    render json: @financial, incldue: :business
  end

  # POST /financials
  def create
    @financial = Financial.new(financial_params)

    if @financial.save
      render json: @financial, status: :created, location: @financial
    else
      render json: @financial.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /financials/1
  def update
    if @financial.update(financial_params)
      render json: @financial
    else
      render json: @financial.errors, status: :unprocessable_entity
    end
  end

  # DELETE /financials/1
  def destroy
    @financial.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_financial
      @financial = Financial.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def financial_params
      params.require(:financial).permit(:year, :sales_revenue, :service_revenue, :advertising, :cogs, :employee_benefits, :equipment, :insurance, :maintenance, :office_supplies, :rent, :r_and_d, :salaries, :software, :travel, :utilities, :website, :other_expense, :interest, :taxes, :ammoritization, :depreciation, :business_id)
    end
end
