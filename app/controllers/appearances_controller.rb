class AppearancesController < ApplicationController

    def new
        @appearance = Appearance.new
        @episodes = Episode.all
        @guests = Guest.all
    end

    def create
        @appearance = Appearance.new(appearance_params)
        @appearance.save
        redirect_to episode_path(@appearance.episode)
    end


    private

    def appearance_params
        params.require(:appearance).permit(:episode_id, :gues_id, :rating)
    end
end
