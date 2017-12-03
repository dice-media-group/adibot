class ShippingAddress < ApplicationRecord
	belongs_to :billing_profile
	validates :first_name, presence: true

end
