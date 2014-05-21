class PickupsController < ApplicationController

  def index
    @pickup = pickup
    @pickups = Pickups.all
  end

  def new
    @pickup = Pickup.new
  end

  def
    # binding.pry
    Pickup.create(pickup_params)
    redirect_to show_path
  end


  private

  def pickup_params
    params.require(:pickup).permit(:user_id, :weight)
  end
end
