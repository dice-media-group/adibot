class SiteAccount < ApplicationRecord
	belongs_to :merchant_site
	 # validates_presence_of :merchant_site
	 has_many :tasks
	 has_one  :billing_profile, :dependent => :destroy
end
