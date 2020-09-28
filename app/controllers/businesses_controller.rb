class BusinessesController < ApplicationController
  before_action :set_business, only: [:show, :update, :destroy]

  # GET /businesses
  def index
    @businesses = Business.all

    render json: @businesses, include: :financials
  end

  # GET /businesses/1
  def show
    render json: @business, include: :financials
  end

  # POST /businesses
  def create
    @business = Business.new(business_params)

    if @business.save
      render json: @business, status: :created, location: @business
    else
      render json: @business.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /businesses/1
  def update
    if @business.update(business_params)
      render json: @business
    else
      render json: @business.errors, status: :unprocessable_entity
    end
  end

  # DELETE /businesses/1
  def destroy
    @business.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business
      @business = Business.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def business_params
      params.require(:business).permit(:first_name, :last_name, :username, :password_digest, :business_name, :business_street, :business_city, :business_state, :business_zip, :business_phone, :email, :website, :industry)
    end
end
