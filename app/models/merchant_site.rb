class MerchantSite < ApplicationRecord
	has_many :site_accounts
	has_many :tasks

	  validates :name, presence: true
end
