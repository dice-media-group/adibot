class Task < ApplicationRecord
  belongs_to :merchant_site
  belongs_to :site_account
  belongs_to :campaign
  belongs_to :billing_profile
end
