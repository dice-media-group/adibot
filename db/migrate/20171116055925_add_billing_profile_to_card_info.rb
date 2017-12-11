class AddBillingProfileToCardInfo < ActiveRecord::Migration[5.1]
  def change
    add_reference :card_infos, :billing_profile, foreign_key: true
  end
end
