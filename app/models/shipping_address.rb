class ShippingAddress < ApplicationRecord
	belongs_to :billing_profile, dependent: :destroy, inverse_of: :billing_addresses, optional: true

	validates :first_name, presence: true

end
