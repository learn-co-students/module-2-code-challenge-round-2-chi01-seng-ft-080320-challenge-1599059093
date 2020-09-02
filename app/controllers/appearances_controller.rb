class AppearancesController < ApplicationController
    def index
        @appearances = Appearance.all 
    end 

    def show
        @appearance = Appearance.find(params[:id])
    end 

    def new
        @appearance = Appearance.new
    end 

    def create
        @appearance = Appearance.new
        @appearance.save
        redirect_to episode_path(episode)
    end 
end 