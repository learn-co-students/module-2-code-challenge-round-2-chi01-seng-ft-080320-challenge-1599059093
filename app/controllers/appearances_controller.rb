class AppearancesController < ApplicationController
    before_action :find_appearance, only: [:show, :edit, :update, :destroy]

    def new
        @appearance = Appearance.new
    end

    def create
        @appearance = Appearance.create(appearance_params)

        if @appearance.valid?
            flash[:success] = "Appearance added!"
            redirect_to episode_path(@appearance.episode.id)     
        else
            flash[:my_errors] = @appearance.errors.full_messages
            redirect_to new_appearance_path
        end
    end

    private

    def find_appearance
        @appearance = Appearance.find(params[:id])
    end

    def appearance_params
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end

end
