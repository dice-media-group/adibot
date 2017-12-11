class AddMerchantSiteToSiteAccount < ActiveRecord::Migration[5.1]
  def change
    add_reference :site_accounts, :merchant_site, foreign_key: true
  end
end
