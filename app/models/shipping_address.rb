class ShippingAddress < ApplicationRecord
	belongs_to :billing_profile
end
