class AddBillingProfileToShippingAddress < ActiveRecord::Migration[5.1]
  def change
    add_reference :shipping_addresses, :billing_profile, foreign_key: true
  end
end
