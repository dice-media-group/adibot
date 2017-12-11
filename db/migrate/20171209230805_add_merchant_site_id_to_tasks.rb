class AddMerchantSiteIdToTasks < ActiveRecord::Migration[5.1]
  def change
    add_reference :tasks, :merchant_site, foreign_key: true
  end
end
