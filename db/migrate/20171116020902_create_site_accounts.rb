class CreateSiteAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :site_accounts do |t|
      t.string :site
      t.boolean :guest
      t.text :email
      t.string :password
      t.string :positive_keyword
      t.string :negative_keyword
      t.string :style_no
      t.string :size
      t.string :early
      t.string :link
      t.string :page_monitor
      t.string :notification_text_no
      t.text :notification_email

      t.timestamps
    end
  end
end
