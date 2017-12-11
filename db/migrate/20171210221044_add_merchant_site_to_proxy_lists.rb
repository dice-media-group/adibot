class AddMerchantSiteToProxyLists < ActiveRecord::Migration[5.1]
  def change
    add_reference :proxy_lists, :merchant_site, foreign_key: true
  end
end
