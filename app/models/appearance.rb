class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode

    validates :numeric_rating, numericality: {greater_than: 0, less_than: 6}
end 