class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances
    

    def average_rating
        x = self.appearances.map do |appearance|
            appearance.rating
        end

        count = x.count
        sum = x.sum
        sum / count
    end



end


# On the Episode show page, show the average rating of the Appearances for the episode.
