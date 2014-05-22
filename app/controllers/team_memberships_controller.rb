class TeamMembershipsController < ApplicationController

  def index
    @team_membership = team_membership
    @team_memberships = TeamMembership.all
  end

  def new
    @team_membership = TeamMembership.new
    @user = current_user
  end


  def create

    current_user.team_memberships << TeamMembership.create(team_membership_params)
    redirect_to user_path(current_user)

  end


  private

  def team_membership_params
    params.require(:team_membership).permit(:user_id, :team_id)
  end

end
