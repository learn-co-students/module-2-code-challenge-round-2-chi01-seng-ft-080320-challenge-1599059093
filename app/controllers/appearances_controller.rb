class AppearancesController < ApplicationController

    def new
        @appearance = Appearance.new

        @episodes = Episode.all 
        @guests = Guest.all
    end

    def create
        @appearance = Appearance.create(appearance_params)

        redirect_to episode_path(@appearance.episode_id)
    end

    private

    def appearance_params
        params.require(:appearance).permit(:episode_id, :guest_id, :rating)
    end

end #end of class
