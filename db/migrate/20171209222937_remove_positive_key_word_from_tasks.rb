class RemovePositiveKeyWordFromTasks < ActiveRecord::Migration[5.1]
  def change
    remove_column :tasks, :positive_key_word, :string
  end
end
