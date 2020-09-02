class GuestsController < ApplicationController
  before_action :find_guest, only: [:show, :edit, :update, :destroy]
  def index
    @guests = Guest.all
  end

  def show
  end

  private 

  def find_guest
      @guest = Guest.find(params[:id])
  end

  def guest_params
      params.require(:guest).permit(:name, :occupation)
  end
  
end
