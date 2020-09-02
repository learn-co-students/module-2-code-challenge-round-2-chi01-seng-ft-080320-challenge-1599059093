class AppearancesController < ApplicationController

    def new
        @appearance = Appearance.new
        @guest = Guest.all 
        @episode = Episode.all
    end

    def create
        appearance = Appearance.new(appearance_params)
        if appearance.save
            flash[:success] = "New Appearance Succesfully Added!"
            redirect_to episode_path(appearance.episode)
        else 
            flash[:errors] = appearance.errors.full_messages
            redirect_to new_appearance_path
        end
    end
      
    private

  def appearance_params
    params.require(:appearance).permit(:guest_id, :episode_id, :rating)     
  end

end
