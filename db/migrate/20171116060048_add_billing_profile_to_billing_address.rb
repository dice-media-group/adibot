class AddBillingProfileToBillingAddress < ActiveRecord::Migration[5.1]
  def change
    add_reference :billing_addresses, :billing_profile, foreign_key: true
  end
end
