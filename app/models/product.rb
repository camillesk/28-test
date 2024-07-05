class Product < ApplicationRecord
  belongs_to :category
  has_many :state_exceptions
end
