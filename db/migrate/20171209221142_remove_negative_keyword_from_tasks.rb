class RemoveNegativeKeywordFromTasks < ActiveRecord::Migration[5.1]
  def change
    remove_column :tasks, :notification_email, :string
    remove_column :tasks, :page_monitor, :string
  end
end
