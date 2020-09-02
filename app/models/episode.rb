class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances


    def average_rating
        average = 0
        counter = 0
        self.appearances.each do |app|
            average += app.rating
            counter +=1
        end
        total_average = average.to_f / counter
    end
end
