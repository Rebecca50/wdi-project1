class UsersController < ApplicationController

  def index
    @user = current_user
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    User.create(user_params)
    redirect_to root_path
  end

  def update
    # User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :terms_of_service)
  end

end
