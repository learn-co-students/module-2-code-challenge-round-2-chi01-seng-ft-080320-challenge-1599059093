class AppearancesController < ApplicationController

    def create
        @appearance = Appearance.create(appearance_params(:guest_id, :episode_id, :rating))
        if @appearance.valid?
            redirect_to episode_path(@appearance.episode)
        else
            flash[:errors] = @appearance.errors.full_messages 
            redirect_to new_appearance_path
        end
    end

    def new 
        @appearance = Appearance.new
        @guests = Guest.all 
        @episodes = Episode.all  
    end


    private

    def appearance_params(*args)
        params.require(:appearance).permit(*args)
    end
end