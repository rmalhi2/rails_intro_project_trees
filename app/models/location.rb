class Location < ApplicationRecord
  belongs_to :tree

  validates :latitude, presence: true
  validates :longitude, presence: true
end
