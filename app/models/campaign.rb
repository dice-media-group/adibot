class Campaign < ApplicationRecord
	belongs_to :user

	has_many :tasks
	has_many :merchant_sites
end
