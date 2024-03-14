class Park < ApplicationRecord
    has_many :trees

    validates :park_name, presence: true
end
