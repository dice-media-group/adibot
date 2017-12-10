class CampaignsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_campaign, only: [:show, :edit, :update, :destroy]

  # GET /campaigns
  def index
    @campaigns = current_user.campaigns.all
  end

  # GET /campaigns/1
  def show
    @tasks = @campaign.tasks.all
    @merchant_sites = @campaign.merchant_sites.group(:id)
  end

  # GET /campaigns/new
  def new
    @campaign = current_user.campaigns.new
  end

  # GET /campaigns/1/edit
  def edit
  end

  # POST /campaigns
  def create
    @campaign = current_user.campaigns.new(allowed_params)

    if @campaign.save
      redirect_to @campaign, notice: 'Campaign was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /campaigns/1
  def update
    if @campaign.update(allowed_params)
      redirect_to @campaign, notice: 'Campaign was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /campaigns/1
  def destroy
    @campaign.destroy
    redirect_to campaigns_url, notice: 'Campaign was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campaign
      @campaign = current_user.campaigns.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.


    def allowed_params
      params.require(:campaign).permit(:name, :order_quantity, merchant_site_ids: [])
      
    end
    def campaign_params
      params.require(:campaign).permit(:name, :order_quantity)
    end
end
