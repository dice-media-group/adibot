class Campaign < ApplicationRecord
	belongs_to :user

	has_many :tasks
	has_many :site_accounts, through: :tasks
	has_many :merchant_sites, through: :site_accounts
end
