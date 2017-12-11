class AddCampaignIdToMerchantSite < ActiveRecord::Migration[5.1]
  def change
    add_reference :merchant_sites, :campaign, foreign_key: true
  end
end
