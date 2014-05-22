class UsersController < ApplicationController

  def index
    @user = current_user
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    # weighings_data = Compost.weighings.compact

    weighings_data = (1..50).to_a
    @svg = Graph.barchart(weighings_data)

    @pick_ups = PickUp.where(user_id: current_user.id)
    @team_memberships = TeamMembership.where(user_id: current_user.id)
  end



  private

  def user_params
    params.require(:user).permit(:email, :email_confirmation, :password, :password_confirmation, :terms_of_service)
  end

end
