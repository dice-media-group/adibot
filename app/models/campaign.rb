class Campaign < ApplicationRecord
	belongs_to :user

	has_many :tasks, :dependent => :destroy
	has_many :merchant_sites, through: :tasks

accepts_nested_attributes_for :tasks, allow_destroy: true,  reject_if: proc { |att| att['merchant_site_id'].blank? }

  validates :name, presence: true
end
