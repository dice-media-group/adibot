class MerchantSite < ApplicationRecord
	has_many :site_accounts
	has_many :tasks
	has_many :campaigns, through: :tasks

	  validates :name, presence: true
end
