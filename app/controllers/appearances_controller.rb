class AppearancesController < ApplicationController

    def new
        @appearance = Appearance.new
    end

    def create
        appearance = Appearance.create(appearance_params)
        if appearance.valid?
            flash[:success] = "A wild #{appearance.guest.name} has appeard on episode #{appearance.episode.number} with a rating of #{appearance.rating}!!!!"
        redirect_to episode_path(appearance.episode)
        else
            flash[:errors] = appearance.errors.full_messages
            redirect_to new_appearance_path
        end
    end




    private

    def appearance_params
        params.require(:appearance).permit(:rating, :guest_id, :episode_id)

    end
end
