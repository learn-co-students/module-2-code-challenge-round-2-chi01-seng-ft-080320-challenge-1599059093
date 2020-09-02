class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances


    def average_rating
        if self.appearances.count > 0
            sum = self.appearances.uniq.sum do |appearance|
                appearance.rating
            end
            average = sum.to_f / self.appearances.uniq.count
            average.round(2)
        end
    end #end of #average_rating

end #end of class
