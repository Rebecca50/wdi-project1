class PickUpsController < ApplicationController

  def index
    @pick_ups = PickUp.all
  end

  def new
    @pick_up = PickUp.new
    @user = current_user
  end

  def create
    current_user.pick_ups << PickUp.create(pickup_params)
    redirect_to user_path(current_user)
  end


  private

  def pickup_params
    params.require(:pick_up).permit(:user_id, :weight,)
  end
end
