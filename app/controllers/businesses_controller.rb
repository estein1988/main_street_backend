class BusinessesController < ApplicationController
  before_action :set_business, only: [:show, :update, :destroy]

  def index
    @businesses = Business.all

    render json: @businesses, include: :financials
  end

  def show
    render json: @business, include: :financials
  end

  def create
    @business = Business.new(business_params)

    if @business.valid?
      @business.save
      render json: @business
    else
      render json: @business.errors.full_messages
    end
  end

  def update
    if @business.update(business_params)
      render json: @business
    else
      render json: @business.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @business.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_business
    @business = Business.find(params[:id])
  end

  def business_params
    params.require(:business).permit(:first_name, :last_name, :username, :password, :business_name, :business_street, :business_city, :business_state, :business_zip, :business_phone, :email, :website, :industry)
  end

end


