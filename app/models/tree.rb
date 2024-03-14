class Tree < ApplicationRecord
  belongs_to :park
  belongs_to :neighbourhood
  has_one :location

  validates :botanical_name, presence: true
  validates :common_name, presence: true
  validates :diameter_at_breast_height, presence: true, numericality: { greater_than: 0 }
  validates :location_class, presence: true
end

