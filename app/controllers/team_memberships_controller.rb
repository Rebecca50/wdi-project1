class TeamMembershipsController < ApplicationController

  def index
    @team_membership = team_membership
    @team_memberships = Team_membership.all
  end

  def new
    @team_membership = Team_membership.new
  end

  def create
    Team_membership.create(team_membership_params)

    # current_user.team_memberships << TeamMembership.create(teammembership_params)
    # redirect_to user_path(current_user)

      if user = user(params[:user_id])
        session[:user_id] = user.id
        redirect_to show_path(user), notice: "Signed In as #{user.email}"<br>"Team: EarthGirl1"
      else
        redirect_to show_path(user), alert: "Team Membership Turned Down. Try again!"
      end
  end


  private

  def user_params
    params.require(:user).permit(:user_id, :team_id)
  end

end
