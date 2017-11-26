class Task < ApplicationRecord
  belongs_to :site_account
  belongs_to :billing_profile
end
