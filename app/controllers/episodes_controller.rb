class EpisodesController < ApplicationController
  before_action :find_episode, only: [:show, :edit, :update, :destroy]

  def index
    @episodes = Episode.all
  end

  def show
  end

  private 

  def find_episode
      @episode = Episode.find(params[:id])
  end

  def episode_params
      params.require(:episode).permit(:date, :number)
  end

end
