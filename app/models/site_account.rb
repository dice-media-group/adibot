class SiteAccount < ApplicationRecord
	belongs_to :merchant_site
	belongs_to :campaign
	 validates_presence_of :merchant_site
	 validates_presence_of :style_no
	 has_many :tasks
end
