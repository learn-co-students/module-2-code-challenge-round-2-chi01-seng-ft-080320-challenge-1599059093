class AppearancesController < ApplicationController
    def new
        @appearance = Appearance.new
        @guests = Guest.all 
        @episodes = Episode.all
    end

    def create
        appearance = Appearance.new(appearance_params)
        if appearance.save
            flash[:success] = "You've booked a new appearance!"
            redirect_to episode_path(appearance.episode.id)
        else
            flash[:my_errors] = appearance.errors.full_messages
            redirect_to new_appearance_path
        end
    end

    private

    def appearance_params
        params.require(:appearance).permit(:rating, :guest_id, :episode_id)
    end
end
