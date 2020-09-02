class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances 

    def average_rating
        if self.appearances.count > 0
            rating_sum = self.appearances.sum {|appearance| appearance.rating}
            rating_average = rating_sum.to_f / self.appearances.count
            rating_average.to_i
        else
            puts "There have been no ratings for this episode"
        end
    end

    def average_rating_for_guest
        if self.appearances.count > 0
            rating_sum = self.appearances.sum {|appearance| appearance.rating}
            rating_average = rating_sum.to_f / self.appearances.count
            rating_average.to_i 
        else
            0
        end
    end
end
