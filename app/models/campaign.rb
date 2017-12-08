class Campaign < ApplicationRecord
	belongs_to :user
	has_many :site_accounts
	has_many :merchant_sites, through: :site_accounts
	has_many :tasks
end
