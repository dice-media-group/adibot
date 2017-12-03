class RemoveBirthdayFromCardInfos < ActiveRecord::Migration[5.1]
  def change
    remove_column :card_infos, :birthday, :text
  end
end
