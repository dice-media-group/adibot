class AddProxyListIdToTasks < ActiveRecord::Migration[5.1]
  def change
    add_reference :tasks, :proxy_list, foreign_key: true
  end
end
