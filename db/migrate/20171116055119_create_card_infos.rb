class CreateCardInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :card_infos do |t|
      t.string :card_nickname
      t.string :card_type
      t.string :name_on_card
      t.string :card_number
      t.string :exp_month
      t.string :exp_year
      t.string :ccv
      t.string :email
      t.string :birthday

      t.timestamps
    end
  end
end
