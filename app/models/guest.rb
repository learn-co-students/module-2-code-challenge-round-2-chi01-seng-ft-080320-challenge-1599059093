class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances


    def appearance_rating(arg)
        Appearance.find_by(guest_id: self.id, episode_id: arg)
    end


end
