class RemoveNegativeKeyWordFromTasks < ActiveRecord::Migration[5.1]
  def change
    remove_column :tasks, :negative_key_word, :string
  end
end
