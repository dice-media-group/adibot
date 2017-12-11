class AddNicknameToSiteAccount < ActiveRecord::Migration[5.1]
  def change
    add_column :site_accounts, :nickname, :string
  end
end
