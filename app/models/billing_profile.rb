class BillingProfile < ApplicationRecord
	# has_many :billing_addresses, inverse_of: :billing_profile, :dependent => :destroy
	# has_many :shipping_addresses, :dependent => :destroy
	has_many :card_infos, :dependent => :destroy
	has_many :billing_addresses, :dependent => :destroy
	has_many :shipping_addresses, :dependent => :destroy

    
# accepts_nested_attributes_for :billing_addresses
# accepts_nested_attributes_for :shipping_addresses
accepts_nested_attributes_for :card_infos, allow_destroy: true,  reject_if: proc { |att| att['card_nickname'].blank? }
accepts_nested_attributes_for :billing_addresses, allow_destroy: true,  reject_if: proc { |att| att['first_name'].blank? }
accepts_nested_attributes_for :shipping_addresses, allow_destroy: true,  reject_if: proc { |att| att['first_name'].blank? }

  validates :nickname, presence: true

end
