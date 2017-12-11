class Task < ApplicationRecord
  belongs_to :merchant_site, optional: true
  belongs_to :site_account, optional: true
  belongs_to :campaign, optional: true
  belongs_to :billing_profile, optional: true
  belongs_to :proxy_list, optional: true
end
