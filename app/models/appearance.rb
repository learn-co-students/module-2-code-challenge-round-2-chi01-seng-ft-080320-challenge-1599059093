class Appearance < ApplicationRecord
    belongs_to :episode
    belongs_to :guest


    validates :rating, numericality: { greater_than_or_equal_to: 1 }
    validates :rating, numericality: { less_than_or_equal_to: 5 }

    # validate :unique_guest_per_episode

    # def unique_guest_per_episode
    #     @episode = Episode.find(appearance.episode_id)
    #     if @episode.guests.include?(self.guest_id)
    #         #add errors to flash hash
    #         flash[:my_errors] = "guest already appears in this episode"
    #     end
     
    # end

end #end of class


# if appearance.guest_id already exists in relation to this episode
# check if that guest already exists in episode_id
# find episode by id
# run episode.guests
# put error message

