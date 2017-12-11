class BillingAddressesController < ApplicationController
  before_action :set_billing_address, only: [:show, :edit, :update, :destroy]

  # GET /billing_addresses
  def index
    @billing_addresses = BillingAddress.all
  end

  # GET /billing_addresses/1
  def show
  end

  # GET /billing_addresses/new
  def new
    @billing_address = BillingAddress.new
  end

  # GET /billing_addresses/1/edit
  def edit
  end

  # POST /billing_addresses
  def create
    @billing_address = BillingAddress.new(billing_address_params)

    if @billing_address.save
      redirect_to @billing_address, notice: 'Billing address was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /billing_addresses/1
  def update
    if @billing_address.update(billing_address_params)
      redirect_to @billing_address, notice: 'Billing address was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /billing_addresses/1
  def destroy
    @billing_address.destroy
    redirect_to billing_addresses_url, notice: 'Billing address was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_billing_address
      @billing_address = BillingAddress.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def billing_address_params
      params.require(:billing_address).permit(:first_name, :last_name, :address_1, :address_2, :city, :state, :zip_code, :country, :house_nb, :phone)
    end
end
