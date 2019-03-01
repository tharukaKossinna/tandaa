class Organisation < ApplicationRecord
    validates :name, presence: true
    validates :hourlyRate, presence: true
end
