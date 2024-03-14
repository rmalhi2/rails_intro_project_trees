class Neighbourhood < ApplicationRecord
    has_many :trees

    validates :neighbourhood_name, presence: true
end
