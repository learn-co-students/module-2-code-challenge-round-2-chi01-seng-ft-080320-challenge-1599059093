class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances

    def appearance_by_rating
        self.appearances.sort_by {|appearance| appearance.episode.average_rating_for_guest}
    end
end
