class CreateProxyLists < ActiveRecord::Migration[5.1]
  def change
    create_table :proxy_lists do |t|
      t.string :name
      t.string :provider_name
      t.boolean :enabled
      t.string :proxy_collection

      t.timestamps
    end
  end
end
