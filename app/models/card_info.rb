class CardInfo < ApplicationRecord
	belongs_to :billing_profile
	validates :card_nickname, presence: true
end
