class MerchantSitesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_merchant_site, only: [:show]

  def show
    @merchant_sites = @campaign.merchant_sites.group(:id)
  	@site_accounts = @merchant_site.site_accounts
  end

private
# Use callbacks to share common setup or constraints between actions.
def set_merchant_site
  @campaign = current_user.campaigns.find(params[:campaign_id])
  # @site_account = @campaign.site_accounts.find(params[:id])
  @merchant_site   = current_user.campaigns.find(params[:campaign_id]).merchant_sites.find(params[:id])
end

# # Only allow a trusted parameter "white list" through.
# def allowed_params
#   params.require(:merchant_site).permit(:merchant_site_id, :site, :guest, :email, :password, :positive_keyword, :negative_keyword, :style_no, :size, :early, :link, :page_monitor, :notification_text_no, :notification_email, :nickname)
# end

end
