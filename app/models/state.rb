class State < ApplicationRecord
  has_many :patients
  has_many :state_products
end
