class BillingProfile < ApplicationRecord
	has_one :billing_address
	has_one :shipping_address
	has_one :card_info
end
