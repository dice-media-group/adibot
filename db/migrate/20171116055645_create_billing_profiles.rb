class CreateBillingProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :billing_profiles do |t|
      t.string :nickname

      t.timestamps
    end
  end
end
