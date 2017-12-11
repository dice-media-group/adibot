class AddCampaignIdToSiteAccounts < ActiveRecord::Migration[5.1]
  def change
    add_reference :site_accounts, :campaign, foreign_key: true
  end
end
