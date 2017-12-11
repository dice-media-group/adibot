class AddCampaignIdToTasks < ActiveRecord::Migration[5.1]
  def change
    add_reference :tasks, :campaign, foreign_key: true
  end
end
