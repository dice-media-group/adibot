class BillingProfile < ApplicationRecord
	has_many :billing_addresses, inverse_of: :billing_profile
	has_many :shipping_addresses
	has_many :card_infos
    
accepts_nested_attributes_for :billing_addresses
accepts_nested_attributes_for :shipping_addresses
accepts_nested_attributes_for :card_infos
end
