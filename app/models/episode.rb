class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances


    def ave_rating
        rating_array = self.appearances.map do |appearance|
            appearance.rating
        end
        rating_array.sum/rating_array.count
    end
end
