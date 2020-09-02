class AppearancesController < ApplicationController

    def index
        @appearances = Appearance.all
    end

    def new
        @appearance = Appearance.new()
        @guests = Guest.all
        @episodes = Episode.all
    end


    def create
        @appearance = Appearance.new(appearance_params)
        @episode = params[:appearance][:episode_id]
        if @appearance.save
            flash[:success] = "You have created a new appearance!!!"
            redirect_to episode_path(@episode)
        else 
            flash[:errors] = @appearance.errors.full_messages
            redirect_to new_appearance_path
        end
    end

    private 

    def appearance_params(*args)
        params.require(:appearance).permit(:rating, :guest_id, :episode_id)
    end

end
