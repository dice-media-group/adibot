class CreateBillingAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :billing_addresses do |t|
      t.string :first_name
      t.string :last_name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :country
      t.string :house_nb
      t.string :phone

      t.timestamps
    end
  end
end
