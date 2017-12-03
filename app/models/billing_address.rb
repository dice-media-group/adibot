class BillingAddress < ApplicationRecord
	belongs_to :billing_profile, dependent: :destroy, inverse_of: :billing_addresses
	validates :first_name, presence: true

end
