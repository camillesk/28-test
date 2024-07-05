class StateProduct < ApplicationRecord
  belongs_to :product
  belongs_to :state
end
