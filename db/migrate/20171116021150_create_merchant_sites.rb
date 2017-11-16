class CreateMerchantSites < ActiveRecord::Migration[5.1]
  def change
    create_table :merchant_sites do |t|
      t.string :name
      t.string :base_url

      t.timestamps
    end
  end
end
