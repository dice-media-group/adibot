class MerchantSite < ApplicationRecord
	has_many :site_accounts
	has_many :tasks
end
