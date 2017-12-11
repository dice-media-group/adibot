class AddBirthdateToCardInfo < ActiveRecord::Migration[5.1]
  def change
    add_column :card_infos, :birthdate, :date
  end
end
