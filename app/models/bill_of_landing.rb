class BillOfLanding < ApplicationRecord
  belongs_to :container
  belongs_to :client
  belongs_to :company
end
