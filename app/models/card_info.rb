class CardInfo < ApplicationRecord
	belongs_to :billing_profile, optional: true
	validates :card_nickname, presence: true
end
