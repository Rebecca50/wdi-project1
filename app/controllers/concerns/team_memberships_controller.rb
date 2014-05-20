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
    redirect_to root_path
  end


  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
