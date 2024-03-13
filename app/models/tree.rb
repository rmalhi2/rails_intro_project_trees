class Tree < ApplicationRecord
  belongs_to :park
  belongs_to :neighbourhood
  has_one :location
end

