class Container < ApplicationRecord
  belongs_to :company
  belongs_to :trip
  has_one :bill_of_landing
end
