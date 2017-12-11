class AddOrderQuantityToCampaign < ActiveRecord::Migration[5.1]
  def change
    add_column :campaigns, :order_quantity, :integer
  end
end
