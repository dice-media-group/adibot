class BillingProfilesController < ApplicationController
  before_action :set_billing_profile, only: [:show, :edit, :update, :destroy]

  # GET /billing_profiles
  def index
    @billing_profiles = BillingProfile.all
  end

  # GET /billing_profiles/1
  def show
  end

  # GET /billing_profiles/new
  def new
    @billing_profile  = BillingProfile.new
    @billing_profile.card_infos.new
    @billing_profile.billing_addresses.new
    @billing_profile.shipping_addresses.new
  end

  # GET /billing_profiles/1/edit
  def edit
  end

  # POST /billing_profiles
  def create
    @billing_profile = BillingProfile.new(allowed_params)

    if @billing_profile.save
      redirect_to billing_profiles_url, notice: 'Billing profile was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /billing_profiles/1
  def update
    if @billing_profile.update(allowed_params)
      redirect_to billing_profiles_url, notice: 'Billing profile was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /billing_profiles/1
  def destroy
    @billing_profile.destroy
    redirect_to billing_profiles_url, notice: 'Billing profile was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_billing_profile
      @billing_profile = BillingProfile.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def allowed_params
      params.require(:billing_profile).permit(:nickname, 
        card_infos_attributes: CardInfo.attribute_names.map(&:to_sym),
        billing_addresses_attributes: BillingAddress.attribute_names.map(&:to_sym),
        shipping_addresses_attributes: ShippingAddress.attribute_names.map(&:to_sym))
    end
end
