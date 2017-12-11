class RemovePositiveKeywordFromTasks < ActiveRecord::Migration[5.1]
  def change
    remove_column :tasks, :early_link, :string
    remove_column :tasks, :notification_text_no, :string

  end
end
