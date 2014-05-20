class PickUpsController < ApplicationController

def index
    @pick_up = pick_up
    @pick_ups = Pick_Ups.all
  end

  def new
    @pick_up = Pick_Up.new
  end

  def create
    Pick_Up.create(Pick_Up_params)
    redirect_to root_path
  end


  private

  def pick_up_params
    params.require(:pick_up).permit(:user_id, :weight)
  end
