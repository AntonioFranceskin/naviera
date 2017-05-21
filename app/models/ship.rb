class Ship < ApplicationRecord
  belongs_to :company
  has_one :trip
end
