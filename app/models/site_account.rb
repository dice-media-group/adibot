class SiteAccount < ApplicationRecord
	belongs_to :merchant_site
	belongs_to :campaign
	 # validates_presence_of :merchant_site
	 has_many :tasks
end
