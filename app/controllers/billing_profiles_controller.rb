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
    @billing_profile = BillingProfile.new
  end

  # GET /billing_profiles/1/edit
  def edit
  end

  # POST /billing_profiles
  def create
    @billing_profile = BillingProfile.new(billing_profile_params)

    if @billing_profile.save
      redirect_to @billing_profile, notice: 'Billing profile was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /billing_profiles/1
  def update
    if @billing_profile.update(billing_profile_params)
      redirect_to @billing_profile, notice: 'Billing profile was successfully updated.'
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
    def billing_profile_params
      params.require(:billing_profile).permit(:nickname)
    end
end
