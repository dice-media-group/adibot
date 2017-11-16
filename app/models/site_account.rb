class SiteAccount < ApplicationRecord
	belongs_to :merchant_site
	 validates_presence_of :merchant_site

end
