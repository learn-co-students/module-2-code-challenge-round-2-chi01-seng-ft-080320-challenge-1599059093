class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
    @guest_ratings = @guest.appearances.sort { |appearance| appearance.rating }.reverse
  end
end
