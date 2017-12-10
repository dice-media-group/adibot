class Task < ApplicationRecord
  belongs_to :merchant_site
  belongs_to :campaign
end
