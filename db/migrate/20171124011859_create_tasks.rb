class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.belongs_to :site_account, foreign_key: true
      t.string :status
      t.string :shoe_size
      t.belongs_to :billing_profile, foreign_key: true
      t.string :positive_key_word
      t.string :negative_key_word
      t.string :style_no
      t.text :early_link
      t.string :page_monitor
      t.string :notification_text_no
      t.string :notification_email

      t.timestamps
    end
  end
end
