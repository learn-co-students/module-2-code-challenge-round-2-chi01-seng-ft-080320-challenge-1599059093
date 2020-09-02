class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def appearance_rating_average
        ratings = self.appearances.map {|appearance| appearance.rating}
        average = ratings.sum.to_f / ratings.count
        average.round(2)
    end

end
