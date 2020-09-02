class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances

    def sort_by_highest_appearance_rating
        self.appearances.sort_by { |appearance| appearance.rating }.reverse
    end


end


%w{apple pear fig}.sort_by { |word| word.length }