class SiteAccountsController < ApplicationController
    before_action :authenticate_user!
  before_action :set_site_account, only: [:show, :edit, :update, :destroy]

  # GET /site_accounts
  def index

    @merchant_site  = MerchantSite.find(params[:merchant_site_id])
    @site_accounts = @merchant_site.site_accounts.all
  end

  # GET /site_accounts/1
  def show
  end

  # GET /site_accounts/new
  def new
    # @site_account = @campaign.site_accounts.build
    @merchant_site =  MerchantSite.find(params[:merchant_site_id])
    @site_account = @merchant_site.site_accounts.new

  end

  # GET /site_accounts/1/edit
  def edit
  end

  # POST /site_accounts
  def create
    @merchant_site  = MerchantSite.find(params[:merchant_site_id])
    @site_account   = @merchant_site.site_accounts.new(site_account_params)

    if @site_account.save
      redirect_to merchant_site_site_accounts_path(@merchant_site), notice: 'Site account was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /site_accounts/1
  def update
    if @site_account.update(site_account_params)
      redirect_to site_accounts_url, notice: 'Site account was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /site_accounts/1
  def destroy
    @site_account.destroy
    redirect_to site_accounts_url, notice: 'Site account was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_site_account
      @campaign = current_user.campaigns.find(params[:campaign_id])
      # @site_account = @campaign.site_accounts.find(params[:id])
      @site_account   = current_user.campaigns.find(params[:campaign_id]).site_accounts.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def site_account_params
      params.require(:site_account).permit(:merchant_site_id, :site, :guest, :email, :password, :positive_keyword, :negative_keyword, :style_no, :size, :early, :link, :page_monitor, :notification_text_no, :notification_email, :nickname)
    end
end
